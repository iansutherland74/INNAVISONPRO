import XCTest
@testable import VisionIINA

final class Wave136Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave136.value(), 136)
    XCTAssertEqual(UtilityWave136.label(), "wave-136")
  }
}
