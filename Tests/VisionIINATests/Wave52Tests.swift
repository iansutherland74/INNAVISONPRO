import XCTest
@testable import VisionIINA

final class DisplayDescriptionComposerTests: XCTestCase {
  func testCompose() {
    XCTAssertEqual(DisplayDescriptionComposer.compose(id: "1", attributes: []), "Display 1")
    XCTAssertTrue(DisplayDescriptionComposer.compose(id: "1", attributes: ["main"]).contains("main"))
  }
}
