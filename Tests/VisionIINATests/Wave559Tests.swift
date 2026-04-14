import XCTest
@testable import VisionIINA

final class Wave559Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave559.value(), 559)
    XCTAssertEqual(UtilityWave559.label(), "wave-559")
  }
}
