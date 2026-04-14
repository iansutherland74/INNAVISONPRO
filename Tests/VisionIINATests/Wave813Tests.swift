import XCTest
@testable import VisionIINA

final class Wave813Tests: XCTestCase {
    func testRawValues() {
        XCTAssertEqual(IINAMpvValueType.number.rawValue,  "number")
        XCTAssertEqual(IINAMpvValueType.string.rawValue,  "string")
        XCTAssertEqual(IINAMpvValueType.boolean.rawValue, "boolean")
        XCTAssertEqual(IINAMpvValueType.object.rawValue,  "object")
    }
    func testAllCasesCount() {
        XCTAssertEqual(IINAMpvValueType.allCases.count, 4)
    }
    func testUnsupportedMessage() {
        XCTAssertTrue(IINAMpvValueType.unsupportedSetMessage.contains("mpv.set"))
        XCTAssertTrue(IINAMpvValueType.unsupportedSetMessage.contains("booleans"))
    }
}
