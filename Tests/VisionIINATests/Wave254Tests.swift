import XCTest
@testable import VisionIINA

final class Wave254Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave254.value(), 254)
    XCTAssertEqual(UtilityWave254.label(), "wave-254")
  }
}
