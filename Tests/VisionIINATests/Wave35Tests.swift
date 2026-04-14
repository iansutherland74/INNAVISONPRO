import XCTest
@testable import VisionIINA

final class LanguageListPresentationTests: XCTestCase {

    func testNormalizedCSVSortsAndJoins() {
        let result = LanguageListPresentation.normalizedCSV(["ja", "en", "fr"])
        XCTAssertEqual(result, "en,fr,ja")
    }

    func testNormalizedCSVTrimsAndDropsEmpty() {
        let result = LanguageListPresentation.normalizedCSV([" en ", "", "  ", "ja"])
        XCTAssertEqual(result, "en,ja")
    }
}
