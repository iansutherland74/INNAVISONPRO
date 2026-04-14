import XCTest
@testable import VisionIINA

final class Wave446Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave446.value(), 446)
    XCTAssertEqual(UtilityWave446.label(), "wave-446")
  }
}
