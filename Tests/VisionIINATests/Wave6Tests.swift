import XCTest
@testable import VisionIINA

// MARK: - MPVChapter Tests

final class MPVChapterTests: XCTestCase {

    func testTitleWhenProvided() {
        let ch = MPVChapter(title: "Opening", startTime: 0, index: 0)
        XCTAssertEqual(ch.title, "Opening")
    }

    func testTitleFallbackWhenNil() {
        // When title is nil it should fall back to "Chapter <index>"
        let ch = MPVChapter(title: nil, startTime: 60, index: 3)
        XCTAssertEqual(ch.title, "Chapter 3")
    }

    func testTimeStoredCorrectly() {
        let ch = MPVChapter(title: "Mid", startTime: 3661.5, index: 1)
        XCTAssertEqual(ch.time.second, 3661.5, accuracy: 0.001)
    }

    func testIndexStoredCorrectly() {
        let ch = MPVChapter(title: nil, startTime: 0, index: 7)
        XCTAssertEqual(ch.index, 7)
    }
}

// MARK: - Aspect Tests

final class AspectTests: XCTestCase {

    func testValueCalculation() {
        let a = Aspect(size: CGSize(width: 16, height: 9))
        XCTAssertEqual(a.value, 16.0 / 9.0, accuracy: 0.0001)
    }

    func testWidthHeightProperties() {
        let a = Aspect(size: CGSize(width: 4, height: 3))
        XCTAssertEqual(a.width, 4)
        XCTAssertEqual(a.height, 3)
    }

    func testWidthHeightMutable() {
        let a = Aspect(size: CGSize(width: 4, height: 3))
        a.width = 16
        a.height = 9
        XCTAssertEqual(a.value, 16.0 / 9.0, accuracy: 0.0001)
    }

    func testStringInitValidAspect() {
        let a = Aspect(string: "16:9")
        XCTAssertNotNil(a)
        XCTAssertEqual(a?.value ?? 0, 16.0 / 9.0, accuracy: 0.0001)
    }

    func testStringInitDecimalAspect() {
        // Regex allows decimals: "2.35:1"
        let a = Aspect(string: "2.35:1")
        XCTAssertNotNil(a)
        XCTAssertEqual(a?.value ?? 0, 2.35, accuracy: 0.001)
    }

    func testStringInitInvalidReturnsNil() {
        XCTAssertNil(Aspect(string: "not-an-aspect"))
        XCTAssertNil(Aspect(string: "16x9"))
        XCTAssertNil(Aspect(string: ""))
    }
}

// MARK: - MPVTrack Tests

final class MPVTrackTests: XCTestCase {

    func testIdStringFormat() {
        let t = MPVTrack(id: 7, type: .audio, isDefault: false, isForced: false,
                         isSelected: false, isExternal: false)
        XCTAssertEqual(t.idString, "#7")
    }

    func testReadableTitleIncludesIdString() {
        let t = MPVTrack(id: 3, type: .video, isDefault: false, isForced: false,
                         isSelected: false, isExternal: false)
        XCTAssertTrue(t.readableTitle.hasPrefix("#3"))
    }

    func testVideoInfoStringIncludesDimensions() {
        let t = MPVTrack(id: 1, type: .video, isDefault: false, isForced: false,
                         isSelected: false, isExternal: false)
        t.codec = "hevc"
        t.demuxW = 3840
        t.demuxH = 2160
        XCTAssertTrue(t.infoString.contains("3840×2160"))
        XCTAssertTrue(t.infoString.contains("hevc"))
    }

    func testVideoInfoStringIncludesFps() {
        let t = MPVTrack(id: 1, type: .video, isDefault: false, isForced: false,
                         isSelected: false, isExternal: false)
        t.demuxFps = 24.0
        XCTAssertTrue(t.infoString.contains("24fps"))
    }

    func testAudioInfoStringIncludesChannels() {
        let t = MPVTrack(id: 2, type: .audio, isDefault: false, isForced: false,
                         isSelected: false, isExternal: false)
        t.demuxChannelCount = 6
        t.demuxSamplerate = 48000
        XCTAssertTrue(t.infoString.contains("6ch"))
        XCTAssertTrue(t.infoString.contains("48kHz"))
    }

    func testDefaultFlagAppearsInInfoString() {
        let t = MPVTrack(id: 1, type: .audio, isDefault: true, isForced: false,
                         isSelected: false, isExternal: false)
        // Upstream uses NSLocalizedString("quicksetting.item_default") which is "Default" in en
        // The result contains the word wrapped in parentheses
        XCTAssertTrue(t.infoString.contains("("))
    }

    func testTrackTypeRawValues() {
        XCTAssertEqual(MPVTrack.TrackType.audio.rawValue,     "audio")
        XCTAssertEqual(MPVTrack.TrackType.video.rawValue,     "video")
        XCTAssertEqual(MPVTrack.TrackType.sub.rawValue,       "sub")
        XCTAssertEqual(MPVTrack.TrackType.secondSub.rawValue, "secondSub")
    }

    func testEmptyTrackHelpers() {
        XCTAssertEqual(MPVTrack.emptyTrack(for: .video).type,    .video)
        XCTAssertEqual(MPVTrack.emptyTrack(for: .audio).type,    .audio)
        XCTAssertEqual(MPVTrack.emptyTrack(for: .sub).type,      .sub)
        XCTAssertEqual(MPVTrack.emptyTrack(for: .secondSub).type,.secondSub)
        XCTAssertEqual(MPVTrack.emptyTrack(for: .video).id,      0)
    }

    func testImageSubClassification() {
        let t = MPVTrack(id: 1, type: .sub, isDefault: false, isForced: false,
                         isSelected: false, isExternal: false)
        t.codec = "hdmv_pgs_subtitle"
        XCTAssertTrue(t.isImageSub)
        t.codec = "ass"
        XCTAssertFalse(t.isImageSub)
        XCTAssertTrue(t.isAssSub)
    }

    func testVideoAndAudioAreNotImageSub() {
        let v = MPVTrack(id: 1, type: .video, isDefault: false, isForced: false,
                         isSelected: false, isExternal: false)
        XCTAssertFalse(v.isImageSub)
        XCTAssertFalse(v.isAssSub)
    }
}

// MARK: - MPVFilter Tests

final class MPVFilterTests: XCTestCase {

    func testCropFilterStringFormat() {
        let f = MPVFilter.crop(w: 1920, h: 1080, x: 0, y: 0)
        XCTAssertEqual(f.name, "crop")
        // crop format is w:h:x:y
        XCTAssertEqual(f.stringFormat, "crop=1920:1080:0:0")
    }

    func testCropFilterNilDimensions() {
        let f = MPVFilter.crop(w: nil, h: nil, x: nil, y: nil)
        XCTAssertEqual(f.stringFormat, "crop=:::")
    }

    func testFlipFilterName() {
        let f = MPVFilter.flip()
        XCTAssertEqual(f.name, "vflip")
        XCTAssertEqual(f.stringFormat, "vflip")
    }

    func testMirrorFilterName() {
        let f = MPVFilter.mirror()
        XCTAssertEqual(f.name, "hflip")
        XCTAssertEqual(f.stringFormat, "hflip")
    }

    func testUnsharpLavfiFormat() {
        let f = MPVFilter.unsharp(amount: 0.5, msize: 5)
        XCTAssertEqual(f.name, "lavfi")
        XCTAssertTrue(f.stringFormat.contains("unsharp"))
        XCTAssertTrue(f.stringFormat.contains("0.5"))
    }

    func testRawStringParseRoundTrip() {
        let str = "crop=1920:1080:0:0"
        let f = MPVFilter(rawString: str)
        XCTAssertNotNil(f)
        XCTAssertEqual(f?.name, "crop")
    }

    func testRawStringWithLabel() {
        let f = MPVFilter(rawString: "@mylabel:vflip")
        XCTAssertNotNil(f)
        XCTAssertEqual(f?.label, "mylabel")
        XCTAssertEqual(f?.name, "vflip")
    }

    func testRawStringInvalidReturnsNil() {
        XCTAssertNil(MPVFilter(rawString: ""))
    }

    func testEquatableByStringFormat() {
        let a = MPVFilter(name: "vflip", label: nil, params: nil)
        let b = MPVFilter(name: "vflip", label: nil, params: nil)
        XCTAssertEqual(a, b)
    }

    func testEquatableDifferentNames() {
        let a = MPVFilter(name: "vflip", label: nil, params: nil)
        let b = MPVFilter(name: "hflip", label: nil, params: nil)
        XCTAssertNotEqual(a, b)
    }

    func testEquatableByParamDict() {
        let a = MPVFilter(name: "eq", label: nil, params: ["brightness": "0.5", "contrast": "1.0"])
        let b = MPVFilter(name: "eq", label: nil, params: ["contrast": "1.0", "brightness": "0.5"])
        // Both should be equal regardless of dict insertion order
        XCTAssertEqual(a, b)
    }

    func testFilterTypesRecognised() {
        XCTAssertEqual(MPVFilter.FilterType(rawValue: "crop"),  .crop)
        XCTAssertEqual(MPVFilter.FilterType(rawValue: "expand"),.expand)
        XCTAssertEqual(MPVFilter.FilterType(rawValue: "lavfi"), .lavfi)
        XCTAssertNil(MPVFilter.FilterType(rawValue: "unknown"))
    }

    func testLabelIncludedInStringFormat() {
        let f = MPVFilter(name: "vflip", label: "myflip", params: nil)
        XCTAssertTrue(f.stringFormat.hasPrefix("@myflip:"))
    }
}

// MARK: - Supporting shim tests

final class PortDoubleFormattingTests: XCTestCase {

    func testWholeNumberDropsDecimalPoint() {
        XCTAssertEqual((48.0).prettyFormat(), "48")
        XCTAssertEqual((0.0).prettyFormat(),  "0")
        XCTAssertEqual((1000.0).prettyFormat(), "1000")
    }

    func testFractionalPreservesDecimals() {
        XCTAssertEqual((24.5).prettyFormat(), "24.5")
    }

    func testRoundsToThreeDecimalPlaces() {
        // 1.0005 rounds to 1.001 at 3dp
        XCTAssertEqual((1.0005).prettyFormat(), "1.001")
    }
}

final class PortCollectionExtensionsTests: XCTestCase {

    func testInBoundsReturnsElement() {
        let arr = ["a", "b", "c"]
        XCTAssertEqual(arr[at: 0], "a")
        XCTAssertEqual(arr[at: 2], "c")
    }

    func testOutOfBoundsReturnsNil() {
        let arr = ["a", "b"]
        XCTAssertNil(arr[at: 5])
        XCTAssertNil(arr[at: -1])
    }

    func testEmptyArrayReturnsNil() {
        let arr: [String] = []
        XCTAssertNil(arr[at: 0])
    }
}
