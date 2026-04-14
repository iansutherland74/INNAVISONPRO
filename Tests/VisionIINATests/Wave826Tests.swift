import XCTest
@testable import VisionIINA

final class Wave826Tests: XCTestCase {
    func testDefaults() {
        XCTAssertEqual(IINAMenuItemDefaults.title,       "")
        XCTAssertEqual(IINAMenuItemDefaults.selected,    false)
        XCTAssertEqual(IINAMenuItemDefaults.enabled,     true)
        XCTAssertNil(IINAMenuItemDefaults.keyBinding)
        XCTAssertEqual(IINAMenuItemDefaults.isSeparator, false)
    }
    func testActionResultRawValues() {
        XCTAssertEqual(IINAMenuItemActionResult.called.rawValue,      "called")
        XCTAssertEqual(IINAMenuItemActionResult.empty.rawValue,       "empty")
        XCTAssertEqual(IINAMenuItemActionResult.notFunction.rawValue, "notFunction")
        XCTAssertEqual(IINAMenuItemActionResult.allCases.count, 3)
    }
    func testEnabledIsTrue() {
        // Items are enabled by default; separators are not interactive
        XCTAssertTrue(IINAMenuItemDefaults.enabled)
        XCTAssertFalse(IINAMenuItemDefaults.isSeparator)
    }
}
