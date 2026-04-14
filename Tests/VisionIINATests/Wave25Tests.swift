import XCTest
@testable import VisionIINA

final class OpenSubLanguageFilterTests: XCTestCase {

    func testFilterKeepsSupportedAndTracksIgnored() {
        let result = OpenSubLanguageFilter.filter(preferred: ["en", "ja", "xx"], supported: ["en", "ja"])
        XCTAssertEqual(result.accepted, ["en", "ja"])
        XCTAssertEqual(result.ignored, ["xx"])
    }

    func testFilterFallsBackToEnglishWhenNoneSupported() {
        let result = OpenSubLanguageFilter.filter(preferred: ["zz"], supported: ["en", "fr"])
        XCTAssertEqual(result.accepted, ["en"])
        XCTAssertEqual(result.ignored, ["zz"])
    }
}
