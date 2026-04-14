import XCTest
@testable import VisionIINA

final class PlaybackCoreStateTests: XCTestCase {

    func testTrackListRouting() {
        let state = PlaybackCoreState()
        state.videoTracks = [MPVTrack(id: 1, type: .video, isDefault: false, isForced: false, isSelected: false, isExternal: false)]
        state.audioTracks = [MPVTrack(id: 2, type: .audio, isDefault: false, isForced: false, isSelected: false, isExternal: false)]
        state.subTracks = [MPVTrack(id: 3, type: .sub, isDefault: false, isForced: false, isSelected: false, isExternal: false)]

        XCTAssertEqual(state.trackList(.video).count, 1)
        XCTAssertEqual(state.trackList(.audio).count, 1)
        XCTAssertEqual(state.trackList(.sub).count, 1)
        XCTAssertEqual(state.trackList(.secondSub).count, 1)
    }

    func testTrackIdRouting() {
        let state = PlaybackCoreState()
        state.vid = 11
        state.aid = 12
        state.sid = 13
        state.secondSid = 14

        XCTAssertEqual(state.trackId(.video), 11)
        XCTAssertEqual(state.trackId(.audio), 12)
        XCTAssertEqual(state.trackId(.sub), 13)
        XCTAssertEqual(state.trackId(.secondSub), 14)
    }

    func testCurrentTrackSelection() {
        let state = PlaybackCoreState()
        state.videoTracks = [
            MPVTrack(id: 1, type: .video, isDefault: false, isForced: false, isSelected: false, isExternal: false),
            MPVTrack(id: 2, type: .video, isDefault: false, isForced: false, isSelected: false, isExternal: false)
        ]
        state.vid = 2

        XCTAssertEqual(state.currentTrack(.video)?.id, 2)
    }

    func testCurrentTrackNilWhenNoSelectedId() {
        let state = PlaybackCoreState()
        state.audioTracks = [MPVTrack(id: 9, type: .audio, isDefault: false, isForced: false, isSelected: false, isExternal: false)]
        state.aid = nil

        XCTAssertNil(state.currentTrack(.audio))
    }

    func testIsAudioUnknownWhenNoTracks() {
        let state = PlaybackCoreState()
        XCTAssertEqual(state.isAudio, .unknown)
    }

    func testIsAudioTrueWhenNoVideoTracksAndAudioExists() {
        let state = PlaybackCoreState()
        state.audioTracks = [MPVTrack(id: 1, type: .audio, isDefault: false, isForced: false, isSelected: false, isExternal: false)]
        XCTAssertEqual(state.isAudio, .isAudio)
    }

    func testIsAudioTrueWhenOnlyAlbumArtVideo() {
        let state = PlaybackCoreState()
        let art = MPVTrack(id: 1, type: .video, isDefault: false, isForced: false, isSelected: false, isExternal: false)
        art.isAlbumart = true
        state.videoTracks = [art]
        state.audioTracks = [MPVTrack(id: 2, type: .audio, isDefault: false, isForced: false, isSelected: false, isExternal: false)]
        XCTAssertEqual(state.isAudio, .isAudio)
    }

    func testIsAudioFalseWhenRealVideoTrackExists() {
        let state = PlaybackCoreState()
        let video = MPVTrack(id: 1, type: .video, isDefault: false, isForced: false, isSelected: false, isExternal: false)
        video.isAlbumart = false
        state.videoTracks = [video]
        XCTAssertEqual(state.isAudio, .notAudio)
    }

    func testIsAudioFalseForNetworkResource() {
        let state = PlaybackCoreState()
        state.isNetworkResource = true
        XCTAssertEqual(state.isAudio, .notAudio)
    }

    func testTimelinePositionClampedByDuration() {
        let state = PlaybackCoreState()
        state.videoDurationSeconds = 100
        state.videoPositionSeconds = 125
        XCTAssertEqual(state.videoPositionSeconds ?? -1, 100, accuracy: 0.0001)
    }

    func testTimelinePositionNonNegativeWithoutDuration() {
        let state = PlaybackCoreState()
        state.videoPositionSeconds = -5
        XCTAssertEqual(state.videoPositionSeconds ?? -1, 0, accuracy: 0.0001)
    }

    func testRemainingSecondsComputed() {
        let state = PlaybackCoreState()
        state.videoDurationSeconds = 90
        state.videoPositionSeconds = 30
        XCTAssertEqual(state.videoRemainingSeconds ?? -1, 60, accuracy: 0.0001)
    }

    func testConstrainVideoPositionExplicitCall() {
        let state = PlaybackCoreState()
        state.videoDurationSeconds = 10
        state.videoPositionSeconds = 15
        state.constrainVideoPosition()
        XCTAssertEqual(state.videoPositionSeconds ?? -1, 10, accuracy: 0.0001)
    }
}
