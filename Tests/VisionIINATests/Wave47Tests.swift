import XCTest
@testable import VisionIINA

final class FixedDecimalStringTests: XCTestCase {
    func testFormatWithDigits() {
        XCTAssertEqual(FixedDecimalString.format(1.23456, digits: 2), "1.23")
        XCTAssertEqual(FixedDecimalString.format(1.2, digits: 0), "1")
    }
}
