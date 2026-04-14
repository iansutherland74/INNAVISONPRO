import Foundation

enum LoopStatus: Sendable {
  case cleared
  case aSet
  case bSet
}

enum MediaIsAudioStatus: Sendable {
  case unknown
  case isAudio
  case notAudio
}

struct PlaybackTimeline: Sendable {
  private(set) var positionSeconds: Double?
  private(set) var durationSeconds: Double?

  mutating func setDuration(_ duration: Double?) {
    durationSeconds = duration
    constrainPosition()
  }

  mutating func setPosition(_ position: Double?) {
    guard let position else {
      positionSeconds = nil
      return
    }
    if let durationSeconds {
      positionSeconds = PlaybackMath.constrainedPosition(position, duration: durationSeconds)
    } else {
      positionSeconds = max(position, 0)
    }
  }

  mutating func constrainPosition() {
    guard let durationSeconds, let positionSeconds else { return }
    self.positionSeconds = PlaybackMath.constrainedPosition(positionSeconds, duration: durationSeconds)
  }

  var remainingSeconds: Double? {
    guard let durationSeconds, let positionSeconds else { return nil }
    return max(durationSeconds - positionSeconds, 0)
  }
}

final class PlaybackCoreState: @unchecked Sendable {
  var isNetworkResource: Bool = false

  var videoTracks: [MPVTrack] = []
  var audioTracks: [MPVTrack] = []
  var subTracks: [MPVTrack] = []

  var aid: Int?
  var sid: Int?
  var vid: Int?
  var secondSid: Int?

  var loopStatus: LoopStatus = .cleared

  private var timeline = PlaybackTimeline()

  var videoPositionSeconds: Double? {
    get { timeline.positionSeconds }
    set { timeline.setPosition(newValue) }
  }

  var videoDurationSeconds: Double? {
    get { timeline.durationSeconds }
    set { timeline.setDuration(newValue) }
  }

  var videoRemainingSeconds: Double? { timeline.remainingSeconds }

  func constrainVideoPosition() {
    timeline.constrainPosition()
  }

  var isAudio: MediaIsAudioStatus {
    guard !isNetworkResource else { return .notAudio }
    let noVideoTrack = videoTracks.isEmpty
    let noAudioTrack = audioTracks.isEmpty
    if noVideoTrack && noAudioTrack {
      return .unknown
    }
    let allVideoTracksAreAlbumCover = !videoTracks.contains { !$0.isAlbumart }
    return (noVideoTrack || allVideoTracksAreAlbumCover) ? .isAudio : .notAudio
  }

  func trackList(_ type: MPVTrack.TrackType) -> [MPVTrack] {
    switch type {
    case .video: return videoTracks
    case .audio: return audioTracks
    case .sub, .secondSub: return subTracks
    }
  }

  func trackId(_ type: MPVTrack.TrackType) -> Int? {
    switch type {
    case .video: return vid
    case .audio: return aid
    case .sub: return sid
    case .secondSub: return secondSid
    }
  }

  func currentTrack(_ type: MPVTrack.TrackType) -> MPVTrack? {
    let id: Int?
    let list: [MPVTrack]
    switch type {
    case .video:
      id = vid
      list = videoTracks
    case .audio:
      id = aid
      list = audioTracks
    case .sub:
      id = sid
      list = subTracks
    case .secondSub:
      id = secondSid
      list = subTracks
    }
    guard let id else { return nil }
    return list.first { $0.id == id }
  }
}
