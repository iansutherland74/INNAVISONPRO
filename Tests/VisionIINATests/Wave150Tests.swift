import XCTest
@testable import VisionIINA

final class Wave150Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave150.value(), 150)
    XCTAssertEqual(UtilityWave150.label(), "wave-150")
  }
}
