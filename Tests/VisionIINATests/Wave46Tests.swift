import XCTest
@testable import VisionIINA

final class NumericMathTests: XCTestCase {
    func testClamp() {
        XCTAssertEqual(NumericMath.clamp(-1, min: 0, max: 1), 0)
        XCTAssertEqual(NumericMath.clamp(0.5, min: 0, max: 1), 0.5)
        XCTAssertEqual(NumericMath.clamp(2, min: 0, max: 1), 1)
    }
}
