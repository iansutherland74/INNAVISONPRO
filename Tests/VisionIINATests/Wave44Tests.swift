import XCTest
@testable import VisionIINA

final class CSVLanguageParserTests: XCTestCase {
    func testParseTrimsAndDropsEmpty() {
        XCTAssertEqual(CSVLanguageParser.parse("en, ja , ,fr"), ["en", "ja", "fr"])
    }
}
