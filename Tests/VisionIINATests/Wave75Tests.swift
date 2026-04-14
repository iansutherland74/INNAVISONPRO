import XCTest
@testable import VisionIINA

final class ShooterRequestPayloadBuilderTests: XCTestCase {
  func testMake() {
    let dict = ShooterRequestPayloadBuilder.make(filehash: "h", path: "/tmp/f")
    XCTAssertEqual(dict["format"] as? String, "json")
  }
}
