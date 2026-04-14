import XCTest
@testable import VisionIINA

final class Wave563Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave563.value(), 563)
    XCTAssertEqual(UtilityWave563.label(), "wave-563")
  }
}
