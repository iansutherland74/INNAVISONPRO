import XCTest
@testable import VisionIINA

final class Wave361Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave361.value(), 361)
    XCTAssertEqual(UtilityWave361.label(), "wave-361")
  }
}
