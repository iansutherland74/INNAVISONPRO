import XCTest
@testable import VisionIINA

final class Wave483Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave483.value(), 483)
    XCTAssertEqual(UtilityWave483.label(), "wave-483")
  }
}
