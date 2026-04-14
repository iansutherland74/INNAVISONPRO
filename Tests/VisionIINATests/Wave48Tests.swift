import XCTest
@testable import VisionIINA

final class HexStringToolsTests: XCTestCase {
    func testHexValidationAndPadding() {
        XCTAssertTrue(HexStringTools.isLowercaseHex("1a2b"))
        XCTAssertFalse(HexStringTools.isLowercaseHex("1A2B"))
        XCTAssertEqual(HexStringTools.paddedLowerHex(0x1a2b, width: 8), "00001a2b")
    }
}
