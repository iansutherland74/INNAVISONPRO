import XCTest
@testable import VisionIINA

final class Wave693Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave693.value(), 693)
    XCTAssertEqual(UtilityWave693.label(), "wave-693")
  }
}
