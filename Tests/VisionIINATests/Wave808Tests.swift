import XCTest
@testable import VisionIINA

final class Wave808Tests: XCTestCase {
  func testRawValues() {
    XCTAssertEqual(IINAPluginMenuOptionKey.enabled.rawValue, "enabled")
    XCTAssertEqual(IINAPluginMenuOptionKey.selected.rawValue, "selected")
    XCTAssertEqual(IINAPluginMenuOptionKey.keyBinding.rawValue, "keyBinding")
  }
  func testAllCases() {
    XCTAssertEqual(IINAPluginMenuOptionKey.allCases.count, 3)
  }
  func testParseFromDict() {
    let dict: [String: Any] = ["enabled": true, "selected": false]
    XCTAssertTrue(IINAPluginMenuOptionKey.parse(from: dict, default: false, for: .enabled))
    XCTAssertFalse(IINAPluginMenuOptionKey.parse(from: dict, default: false, for: .selected))
    // missing key falls back to default
    XCTAssertFalse(IINAPluginMenuOptionKey.parse(from: dict, default: false, for: .keyBinding))
    XCTAssertTrue(IINAPluginMenuOptionKey.parse(from: [:], default: true, for: .enabled))
  }
}
