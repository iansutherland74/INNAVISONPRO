import XCTest
@testable import VisionIINA

final class Wave843Tests: XCTestCase {
    func testSeekOptionRawValues() {
        XCTAssertEqual(IINAPreferenceSeekOption.relative.rawValue, 0)
        XCTAssertEqual(IINAPreferenceSeekOption.exact.rawValue,    1)
        XCTAssertEqual(IINAPreferenceSeekOption.auto.rawValue,     2)
    }
    func testOSCPositionRawValues() {
        XCTAssertEqual(IINAPreferenceOSCPosition.floating.rawValue, 0)
        XCTAssertEqual(IINAPreferenceOSCPosition.top.rawValue,      1)
        XCTAssertEqual(IINAPreferenceOSCPosition.bottom.rawValue,   2)
    }
    func testMouseClickActionRawValues() {
        XCTAssertEqual(IINAPreferenceMouseClickAction.none.rawValue,             0)
        XCTAssertEqual(IINAPreferenceMouseClickAction.fullscreen.rawValue,       1)
        XCTAssertEqual(IINAPreferenceMouseClickAction.pause.rawValue,            2)
        XCTAssertEqual(IINAPreferenceMouseClickAction.hideOSC.rawValue,         3)
        XCTAssertEqual(IINAPreferenceMouseClickAction.togglePIP.rawValue,       4)
        XCTAssertEqual(IINAPreferenceMouseClickAction.abLoop.rawValue,          5)
        XCTAssertEqual(IINAPreferenceMouseClickAction.resetPlaybackSpeed.rawValue, 6)
    }
    func testScrollActionRawValues() {
        XCTAssertEqual(IINAPreferenceScrollAction.volume.rawValue,        0)
        XCTAssertEqual(IINAPreferenceScrollAction.seek.rawValue,          1)
        XCTAssertEqual(IINAPreferenceScrollAction.none.rawValue,          2)
        XCTAssertEqual(IINAPreferenceScrollAction.passToMpv.rawValue,     3)
        XCTAssertEqual(IINAPreferenceScrollAction.playbackSpeed.rawValue, 4)
    }
    func testAllCasesCount() {
        XCTAssertEqual(IINAPreferenceSeekOption.allCases.count,       3)
        XCTAssertEqual(IINAPreferenceOSCPosition.allCases.count,      3)
        XCTAssertEqual(IINAPreferenceMouseClickAction.allCases.count, 7)
        XCTAssertEqual(IINAPreferenceScrollAction.allCases.count,     5)
    }
}
