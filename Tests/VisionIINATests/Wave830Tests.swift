import XCTest
@testable import VisionIINA

final class Wave830Tests: XCTestCase {
    func testTrackTags() {
        XCTAssertEqual(IINAMenuTrackTag.video.rawValue, 0)
        XCTAssertEqual(IINAMenuTrackTag.audio.rawValue, 1)
        XCTAssertEqual(IINAMenuTrackTag.sub.rawValue,   2)
        XCTAssertEqual(IINAMenuTrackTag.allCases.count, 3)
    }
    func testStepTags() {
        XCTAssertEqual(IINAMenuStepTag.forward.rawValue,  0)
        XCTAssertEqual(IINAMenuStepTag.backward.rawValue, 1)
        XCTAssertEqual(IINAMenuStepTag.allCases.count, 2)
    }
    func testSpeedResetTag() {
        XCTAssertEqual(IINAMenuSpeedTag.reset, 5)
        // Reset tag must not clash with any track tag
        XCTAssertNil(IINAMenuTrackTag(rawValue: IINAMenuSpeedTag.reset))
    }
}
