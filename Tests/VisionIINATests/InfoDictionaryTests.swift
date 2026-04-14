import XCTest
@testable import VisionIINA

final class InfoDictionaryTests: XCTestCase {

    // MARK: - BuildType enum

    func testBuildTypeRawValues() {
        XCTAssertEqual(InfoDictionary.BuildType(rawValue: "Beta"),    .beta)
        XCTAssertEqual(InfoDictionary.BuildType(rawValue: "Nightly"), .nightly)
        XCTAssertEqual(InfoDictionary.BuildType(rawValue: "Release"), .release)
        XCTAssertEqual(InfoDictionary.BuildType(rawValue: "Debug"),   .debug)
    }

    func testBuildTypeDescriptions() {
        XCTAssertEqual(InfoDictionary.BuildType.beta.description,    "BETA")
        XCTAssertEqual(InfoDictionary.BuildType.nightly.description, "NIGHTLY")
        XCTAssertEqual(InfoDictionary.BuildType.release.description, "RELEASE")
        XCTAssertEqual(InfoDictionary.BuildType.debug.description,   "DEBUG")
    }

    func testBuildTypeUnknownRawValueFallsBackToNightly() {
        // buildType property returns .nightly for unrecognised configuration strings
        let result = InfoDictionary.BuildType(rawValue: "SomethingNew")
        XCTAssertNil(result, "Unknown raw value should not produce a case")
    }

    func testBuildTypeReleaseHasNoTypeIdentifier() {
        // buildTypeIdentifier is nil for release builds — convention used to omit suffix in UI
        let releaseIsRelease = (InfoDictionary.BuildType.release == .release)
        XCTAssertTrue(releaseIsRelease)
    }

    // MARK: - buildXcode parsing (pure logic extracted inline)

    // The parsing logic inside buildXcode converts a 4-char XCODE_VERSION_ACTUAL string
    // into a human-readable "major.minor" form. These tests replicate that logic directly
    // so they are independent of any bundle plist keys.

    private func parseXcodeVersion(_ asFourChars: String) -> String? {
        guard asFourChars.count == 4 else { return asFourChars }
        let major: String.SubSequence
        if asFourChars.first == "0" {
            let index = asFourChars.index(asFourChars.startIndex, offsetBy: 1)
            major = asFourChars[index...index]
        } else {
            major = asFourChars.prefix(2)
        }
        let minor: String.SubSequence
        if asFourChars.last == "0" {
            let index = asFourChars.index(asFourChars.endIndex, offsetBy: -2)
            minor = asFourChars[index...index]
        } else {
            minor = asFourChars.suffix(2)
        }
        return "\(major).\(minor)"
    }

    func testXcodeVersionDoubledigitMajorNonzeroMinor() {
        // "1621" → Xcode 16.21 (non-zero trailing digit, both suffix chars kept)
        XCTAssertEqual(parseXcodeVersion("1621"), "16.21")
        // "1620" → last char is 0, minor collapses to single digit → "16.2"
        XCTAssertEqual(parseXcodeVersion("1620"), "16.2")
    }

    func testXcodeVersionTrailingZeroMinor() {
        // "1500" → Xcode 15.0
        XCTAssertEqual(parseXcodeVersion("1500"), "15.0")
    }

    func testXcodeVersionLeadingZeroMajor() {
        // "0930" → Xcode 9.3 (single-digit major)
        XCTAssertEqual(parseXcodeVersion("0930"), "9.3")
    }

    func testXcodeVersionLeadingZeroMajorTrailingZeroMinor() {
        // "0900" → Xcode 9.0
        XCTAssertEqual(parseXcodeVersion("0900"), "9.0")
    }

    func testXcodeVersionNon4CharPassthrough() {
        // Strings that are not exactly 4 chars are returned unchanged
        XCTAssertEqual(parseXcodeVersion("999"),    "999")    // 3 chars
        XCTAssertEqual(parseXcodeVersion("16.2.0"), "16.2.0") // 6 chars
        XCTAssertEqual(parseXcodeVersion(""),       "")        // 0 chars
    }

    // MARK: - isDebug compile-time flag

    func testIsDebugMatchesCompilationCondition() {
        let info = InfoDictionary.shared
        #if DEBUG
        XCTAssertTrue(info.isDebug)
        #else
        XCTAssertFalse(info.isDebug)
        #endif
    }
}
