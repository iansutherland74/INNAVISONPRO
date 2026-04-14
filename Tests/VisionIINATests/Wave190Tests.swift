import XCTest
@testable import VisionIINA

final class Wave190Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave190.value(), 190)
    XCTAssertEqual(UtilityWave190.label(), "wave-190")
  }
}
