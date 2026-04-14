import XCTest
@testable import VisionIINA

final class VideoTimeTests: XCTestCase {
    func testHalfDownRoundingAtZeroPointFive() {
        let t = VideoTime(0.5)
        XCTAssertEqual(t.stringRepresentationWithPrecision(0), "00:00")
    }

    func testParsingAndFormattingHourMinuteSecond() {
        let parsed = VideoTime("01:02:03")
        XCTAssertNotNil(parsed)
        XCTAssertEqual(parsed?.stringRepresentation, "1:02:03")
    }

    func testInfiniteProducesEndLabel() {
        XCTAssertEqual(VideoTime.infinite.stringRepresentation, "End")
    }
}
