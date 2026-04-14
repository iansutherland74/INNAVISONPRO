import XCTest
@testable import VisionIINA

final class LanguageCodeCSVTests: XCTestCase {

    func testParsePreferredSplitsAndTrims() {
        let result = LanguageCodeCSV.parsePreferred("en, ja ,fr")
        XCTAssertEqual(result, ["en", "ja", "fr"])
    }

    func testParsePreferredFallsBackWhenNilOrEmpty() {
        XCTAssertEqual(LanguageCodeCSV.parsePreferred(nil), ["en"])
        XCTAssertEqual(LanguageCodeCSV.parsePreferred(" , "), ["en"])
        XCTAssertEqual(LanguageCodeCSV.parsePreferred("", fallback: ["de"]), ["de"])
    }
}
