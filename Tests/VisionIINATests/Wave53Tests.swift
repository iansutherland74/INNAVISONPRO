import XCTest
@testable import VisionIINA

final class DisplaySelectionPolicyTests: XCTestCase {
  func testPreferredDisplayOrder() {
    XCTAssertEqual(DisplaySelectionPolicy.preferredDisplay(main: "m", builtin: "b", fallback: "f"), "m")
    XCTAssertEqual(DisplaySelectionPolicy.preferredDisplay(main: nil, builtin: "b", fallback: "f"), "b")
  }
}
