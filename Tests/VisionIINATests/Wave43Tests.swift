import XCTest
@testable import VisionIINA

final class SubtitleLanguageDefaultsTests: XCTestCase {
    func testFallbackIsEnglish() {
        XCTAssertEqual(SubtitleLanguageDefaults.fallback, ["en"])
    }
}
