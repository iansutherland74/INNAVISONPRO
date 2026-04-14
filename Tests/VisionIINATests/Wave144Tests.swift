import XCTest
@testable import VisionIINA

final class Wave144Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave144.value(), 144)
    XCTAssertEqual(UtilityWave144.label(), "wave-144")
  }
}
