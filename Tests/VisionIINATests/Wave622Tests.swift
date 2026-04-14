import XCTest
@testable import VisionIINA

final class Wave622Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave622.value(), 622)
    XCTAssertEqual(UtilityWave622.label(), "wave-622")
  }
}
