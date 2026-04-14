import XCTest
@testable import VisionIINA

final class PlaybackMathTests: XCTestCase {

    func testNormalizedOffsetAtCenter() {
        XCTAssertEqual(PlaybackMath.normalizedOffset(0, bound: 10), 0.5, accuracy: 0.0001)
    }

    func testNormalizedOffsetAtLowerBound() {
        XCTAssertEqual(PlaybackMath.normalizedOffset(-10, bound: 10), 0.0, accuracy: 0.0001)
    }

    func testNormalizedOffsetAtUpperBound() {
        XCTAssertEqual(PlaybackMath.normalizedOffset(10, bound: 10), 1.0, accuracy: 0.0001)
    }

    func testNormalizedOffsetClampsBelowRange() {
        XCTAssertEqual(PlaybackMath.normalizedOffset(-99, bound: 10), 0.0, accuracy: 0.0001)
    }

    func testNormalizedOffsetClampsAboveRange() {
        XCTAssertEqual(PlaybackMath.normalizedOffset(99, bound: 10), 1.0, accuracy: 0.0001)
    }

    func testNormalizedOffsetZeroBoundFallsBackToCenter() {
        XCTAssertEqual(PlaybackMath.normalizedOffset(5, bound: 0), 0.5, accuracy: 0.0001)
    }

    func testConstrainedPositionWithinRange() {
        XCTAssertEqual(PlaybackMath.constrainedPosition(12.5, duration: 20), 12.5, accuracy: 0.0001)
    }

    func testConstrainedPositionBelowZero() {
        XCTAssertEqual(PlaybackMath.constrainedPosition(-1, duration: 20), 0, accuracy: 0.0001)
    }

    func testConstrainedPositionAboveDuration() {
        XCTAssertEqual(PlaybackMath.constrainedPosition(99, duration: 20), 20, accuracy: 0.0001)
    }

    func testConstrainedPositionWithNegativeDuration() {
        XCTAssertEqual(PlaybackMath.constrainedPosition(10, duration: -1), 0, accuracy: 0.0001)
    }

    func testResolvedDimensionAbsolute() {
        XCTAssertEqual(PlaybackMath.resolvedDimension("640", base: nil) ?? -1, 640, accuracy: 0.0001)
    }

    func testResolvedDimensionPercentWithBase() {
        XCTAssertEqual(PlaybackMath.resolvedDimension("50%", base: 1920) ?? -1, 960, accuracy: 0.0001)
    }

    func testResolvedDimensionPercentWithoutBaseReturnsNil() {
        XCTAssertNil(PlaybackMath.resolvedDimension("50%", base: nil))
    }

    func testResolvedDimensionInvalidReturnsNil() {
        XCTAssertNil(PlaybackMath.resolvedDimension("abc", base: 100))
        XCTAssertNil(PlaybackMath.resolvedDimension("", base: 100))
        XCTAssertNil(PlaybackMath.resolvedDimension(nil, base: 100))
    }
}
