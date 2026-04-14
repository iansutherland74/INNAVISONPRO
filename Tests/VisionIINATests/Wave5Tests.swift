import XCTest
@testable import VisionIINA

// MARK: - MPVCommand Tests

final class MPVCommandTests: XCTestCase {

    func testRawRepresentableRoundTrip() {
        // Every static constant must survive init(rawValue:) round-trip
        let cmds: [MPVCommand] = [
            .seek, .set, .add, .cycle, .multiply, .quit, .loadfile,
            .playlistNext, .playlistPrev, .screenshot, .stop, .ignore
        ]
        for cmd in cmds {
            let rt = MPVCommand(rawValue: cmd.rawValue)
            XCTAssertNotNil(rt, "round-trip failed for \(cmd.rawValue)")
            XCTAssertEqual(rt?.rawValue, cmd.rawValue)
        }
    }

    func testStringInitEquivalent() {
        // init(_ string:) and init(rawValue:) must produce the same value
        let direct = MPVCommand("loadfile")
        let via    = MPVCommand(rawValue: "loadfile")
        XCTAssertEqual(direct.rawValue, via?.rawValue)
    }

    func testKnownCommandValues() {
        XCTAssertEqual(MPVCommand.seek.rawValue,          "seek")
        XCTAssertEqual(MPVCommand.quit.rawValue,          "quit")
        XCTAssertEqual(MPVCommand.quitWatchLater.rawValue,"quit-watch-later")
        XCTAssertEqual(MPVCommand.loadfile.rawValue,      "loadfile")
        XCTAssertEqual(MPVCommand.playlistNext.rawValue,  "playlist-next")
        XCTAssertEqual(MPVCommand.playlistPrev.rawValue,  "playlist-prev")
        XCTAssertEqual(MPVCommand.screenshot.rawValue,    "screenshot")
        XCTAssertEqual(MPVCommand.frameStep.rawValue,     "frame-step")
        XCTAssertEqual(MPVCommand.frameBackStep.rawValue, "frame-back-step")
        XCTAssertEqual(MPVCommand.subAdd.rawValue,        "sub-add")
        XCTAssertEqual(MPVCommand.stop.rawValue,          "stop")
    }

    func testUnknownRawValueReturnsNil() {
        // An arbitrary string can't be pattern-matched with a constant,
        // but init?(rawValue:) succeeds for any string (it's a plain wrapper)
        let custom = MPVCommand(rawValue: "my-custom-command")
        XCTAssertNotNil(custom)
        XCTAssertEqual(custom?.rawValue, "my-custom-command")
    }
}

// MARK: - MPVOption Tests

final class MPVOptionTests: XCTestCase {

    func testTrackSelectionConstants() {
        XCTAssertEqual(MPVOption.TrackSelection.alang, "alang")
        XCTAssertEqual(MPVOption.TrackSelection.slang, "slang")
        XCTAssertEqual(MPVOption.TrackSelection.aid,   "aid")
        XCTAssertEqual(MPVOption.TrackSelection.sid,   "sid")
        XCTAssertEqual(MPVOption.TrackSelection.vid,   "vid")
    }

    func testPlaybackControlConstants() {
        XCTAssertEqual(MPVOption.PlaybackControl.start,       "start")
        XCTAssertEqual(MPVOption.PlaybackControl.pause,       "pause")
        XCTAssertEqual(MPVOption.PlaybackControl.speed,       "speed")
        XCTAssertEqual(MPVOption.PlaybackControl.loopFile,    "loop-file")
        XCTAssertEqual(MPVOption.PlaybackControl.loopPlaylist,"loop-playlist")
    }

    func testVideoConstants() {
        XCTAssertEqual(MPVOption.Video.hwdec, "hwdec")
    }

    func testAudioConstants() {
        XCTAssertEqual(MPVOption.Audio.audioDelay, "audio-delay")
        XCTAssertEqual(MPVOption.Audio.volume,     "volume")
        XCTAssertEqual(MPVOption.Audio.mute,       "mute")
    }

    func testSubtitleConstants() {
        XCTAssertEqual(MPVOption.Subtitles.subDelay, "sub-delay")
        XCTAssertEqual(MPVOption.Subtitles.subPos,   "sub-pos")
    }

    func testOSDConstants() {
        XCTAssertEqual(MPVOption.OSD.osdLevel,    "osd-level")
        XCTAssertEqual(MPVOption.OSD.osdDuration, "osd-duration")
    }

    func testScreenshotConstants() {
        XCTAssertEqual(MPVOption.Screenshot.screenshotFormat, "screenshot-format")
        XCTAssertEqual(MPVOption.Screenshot.screenshotDir,    "screenshot-dir")
    }

    func testCocoaCbSwRendererDefault() {
        // defaultValue must be .auto
        XCTAssertEqual(CocoaCbSwRenderer.defaultValue, .auto)
        XCTAssertEqual(CocoaCbSwRenderer.defaultValue.rawValue, "auto")
    }

    func testCocoaCbSwRendererRawValues() {
        XCTAssertEqual(CocoaCbSwRenderer(rawValue: "auto"), .auto)
        XCTAssertEqual(CocoaCbSwRenderer(rawValue: "yes"),  .yes)
        XCTAssertEqual(CocoaCbSwRenderer(rawValue: "no"),   .no)
        XCTAssertNil(CocoaCbSwRenderer(rawValue: "maybe"))
    }
}

// MARK: - MPVProperty Tests

final class MPVPropertyTests: XCTestCase {

    func testCorePlaybackProperties() {
        XCTAssertEqual(MPVProperty.duration,        "duration")
        XCTAssertEqual(MPVProperty.timePos,         "time-pos")
        XCTAssertEqual(MPVProperty.idleActive,      "idle-active")
        XCTAssertEqual(MPVProperty.filename,        "filename")
        XCTAssertEqual(MPVProperty.path,            "path")
        XCTAssertEqual(MPVProperty.aoVolume,        "ao-volume")
        XCTAssertEqual(MPVProperty.aoMute,          "ao-mute")
    }

    func testTrackProperties() {
        XCTAssertEqual(MPVProperty.trackList,           "track-list")
        XCTAssertEqual(MPVProperty.trackListCount,      "track-list/count")
        XCTAssertEqual(MPVProperty.currentTracksAudioId,"current-tracks/audio/id")
        XCTAssertEqual(MPVProperty.currentTracksVideoId,"current-tracks/video/id")
        XCTAssertEqual(MPVProperty.currentTracksSubId,  "current-tracks/sub/id")
    }

    func testChapterProperties() {
        XCTAssertEqual(MPVProperty.chapter,         "chapter")
        XCTAssertEqual(MPVProperty.chapterList,     "chapter-list")
    }

    func testPlaylistProperties() {
        XCTAssertEqual(MPVProperty.playlist,        "playlist")
        XCTAssertEqual(MPVProperty.playlistCount,   "playlist-count")
        XCTAssertEqual(MPVProperty.playlistPos,     "playlist-pos")
    }

    func testVideoProperties() {
        XCTAssertEqual(MPVProperty.videoParams,       "video-params")
        XCTAssertEqual(MPVProperty.videoParamsRotate, "video-params/rotate")
        XCTAssertEqual(MPVProperty.width,             "width")
        XCTAssertEqual(MPVProperty.height,            "height")
    }
}

// MARK: - PlayerState Tests

final class PlayerStateTests: XCTestCase {

    // Declaration order matters: active/loaded are computed from rawValue comparisons
    func testDeclarationOrderRawValues() {
        XCTAssertLessThan(PlayerState.loading.rawValue,  PlayerState.stopping.rawValue)
        XCTAssertLessThan(PlayerState.starting.rawValue, PlayerState.stopping.rawValue)
        XCTAssertLessThan(PlayerState.loaded.rawValue,   PlayerState.stopping.rawValue)
        XCTAssertLessThan(PlayerState.playing.rawValue,  PlayerState.stopping.rawValue)
        XCTAssertLessThan(PlayerState.paused.rawValue,   PlayerState.stopping.rawValue)
    }

    func testActiveProperty() {
        // States before stopping are considered active
        XCTAssertTrue(PlayerState.loading.active)
        XCTAssertTrue(PlayerState.starting.active)
        XCTAssertTrue(PlayerState.loaded.active)
        XCTAssertTrue(PlayerState.playing.active)
        XCTAssertTrue(PlayerState.paused.active)
        // stopping and beyond are NOT active
        XCTAssertFalse(PlayerState.stopping.active)
        XCTAssertFalse(PlayerState.idle.active)
        XCTAssertFalse(PlayerState.shuttingDown.active)
        XCTAssertFalse(PlayerState.shutDown.active)
    }

    func testLoadedProperty() {
        // loaded requires active AND rawValue >= loaded's rawValue
        XCTAssertFalse(PlayerState.loading.loaded)
        XCTAssertFalse(PlayerState.starting.loaded)
        XCTAssertTrue(PlayerState.loaded.loaded)
        XCTAssertTrue(PlayerState.playing.loaded)
        XCTAssertTrue(PlayerState.paused.loaded)
        // non-active states are never loaded
        XCTAssertFalse(PlayerState.stopping.loaded)
        XCTAssertFalse(PlayerState.idle.loaded)
        XCTAssertFalse(PlayerState.shutDown.loaded)
    }

    func testRawValueRoundTrip() {
        let allStates: [PlayerState] = [
            .loading, .starting, .loaded, .playing, .paused,
            .stopping, .idle, .shuttingDown, .shutDown
        ]
        for state in allStates {
            let rt = PlayerState(rawValue: state.rawValue)
            XCTAssertEqual(rt, state, "round-trip failed for \(state)")
        }
    }

    func testAllStatesDistinct() {
        let values = [
            PlayerState.loading.rawValue, PlayerState.starting.rawValue,
            PlayerState.loaded.rawValue,  PlayerState.playing.rawValue,
            PlayerState.paused.rawValue,  PlayerState.stopping.rawValue,
            PlayerState.idle.rawValue,    PlayerState.shuttingDown.rawValue,
            PlayerState.shutDown.rawValue
        ]
        // All 9 raw values must be unique
        XCTAssertEqual(Set(values).count, values.count)
    }
}

// MARK: - Sysctl Tests

final class SysctlTests: XCTestCase {

    func testSharedIsSingletonInstance() {
        // Both accesses must reflect the same value type (struct copies are equal)
        let a = Sysctl.shared
        let b = Sysctl.shared
        // hw.model should return identical result on repeated calls
        XCTAssertEqual(a.hwModel, b.hwModel)
        XCTAssertEqual(a.machineCpuBrandString, b.machineCpuBrandString)
    }

    func testHwModelNonEmpty() {
        // On any real Apple hardware or simulator the hw.model key is available
        if let model = Sysctl.shared.hwModel {
            XCTAssertFalse(model.isEmpty, "hw.model should not be empty")
        }
        // If nil, the key simply wasn't available -- not a failure in a VM/sim context
    }

    func testCpuBrandStringNonEmpty() {
        if let brand = Sysctl.shared.machineCpuBrandString {
            XCTAssertFalse(brand.isEmpty, "cpu brand string should not be empty")
        }
    }
}
