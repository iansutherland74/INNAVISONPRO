import XCTest
@testable import VisionIINA

final class Wave139Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave139.value(), 139)
    XCTAssertEqual(UtilityWave139.label(), "wave-139")
  }
}
