import XCTest
@testable import VisionIINA

final class OSDProgressMathTests: XCTestCase {

    func testToPercentAtBoundsAndCenter() {
        XCTAssertEqual(OSDProgressMath.toPercent(-10, 10), 0, accuracy: 0.000001)
        XCTAssertEqual(OSDProgressMath.toPercent(0, 10), 0.5, accuracy: 0.000001)
        XCTAssertEqual(OSDProgressMath.toPercent(10, 10), 1, accuracy: 0.000001)
    }

    func testToPercentClampsOutsideRange() {
        XCTAssertEqual(OSDProgressMath.toPercent(-100, 10), 0, accuracy: 0.000001)
        XCTAssertEqual(OSDProgressMath.toPercent(100, 10), 1, accuracy: 0.000001)
    }

    func testToPercentSupportsFractionalValues() {
        XCTAssertEqual(OSDProgressMath.toPercent(2.5, 10), 0.625, accuracy: 0.000001)
        XCTAssertEqual(OSDProgressMath.toPercent(-2.5, 10), 0.375, accuracy: 0.000001)
    }

    func testToPercentZeroOrNegativeBoundReturnsZero() {
        XCTAssertEqual(OSDProgressMath.toPercent(1, 0), 0, accuracy: 0.000001)
        XCTAssertEqual(OSDProgressMath.toPercent(1, -1), 0, accuracy: 0.000001)
    }
}
