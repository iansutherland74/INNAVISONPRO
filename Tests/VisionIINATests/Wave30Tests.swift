import XCTest
@testable import VisionIINA

final class InputConfLineParserTests: XCTestCase {

    func testParsesRegularLine() {
        let result = InputConfLineParser.parse("SPACE cycle pause")
        XCTAssertEqual(result?.rawKey, "SPACE")
        XCTAssertEqual(result?.rawAction, "cycle pause")
        XCTAssertEqual(result?.isIINACommand, false)
    }

    func testParsesIINAExtendedLineWithComment() {
        let result = InputConfLineParser.parse("#@iina K toggle-ui   #show")
        XCTAssertEqual(result?.rawKey, "K")
        XCTAssertEqual(result?.rawAction, "toggle-ui")
        XCTAssertEqual(result?.isIINACommand, true)
        XCTAssertEqual(result?.comment, "show")
    }

    func testSkipsCommentBlankAndInvalid() {
        XCTAssertNil(InputConfLineParser.parse("# plain comment"))
        XCTAssertNil(InputConfLineParser.parse("   "))
        XCTAssertNil(InputConfLineParser.parse("onlykey"))
    }
}
