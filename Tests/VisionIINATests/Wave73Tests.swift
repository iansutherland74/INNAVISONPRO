import XCTest
@testable import VisionIINA

final class OSDTokenTemplateTests: XCTestCase {
  func testRender() { XCTAssertEqual(OSDTokenTemplate.render("{{a}}/{{b}}", tokens: ["a":"1","b":"2"]), "1/2") }
}
