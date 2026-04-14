import XCTest
@testable import VisionIINA

final class KeyBindingItemOptionsTests: XCTestCase {
  func testChooseIn() { XCTAssertEqual(KeyBindingItemOptions.chooseIn("a|b|c"), ["a", "b", "c"]) }
}
