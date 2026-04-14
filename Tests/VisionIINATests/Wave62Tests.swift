import XCTest
@testable import VisionIINA

final class KeyBindingTranslatorKeyPathTests: XCTestCase {
  func testMake() {
    XCTAssertEqual(KeyBindingTranslatorKeyPath.make(l10nKey: nil, name: "pause"), "pause")
    XCTAssertEqual(KeyBindingTranslatorKeyPath.make(l10nKey: "iina", name: "pause"), "iina.pause")
  }
}
