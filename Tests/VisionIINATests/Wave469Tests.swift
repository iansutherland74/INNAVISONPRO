import XCTest
@testable import VisionIINA

final class Wave469Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave469.value(), 469)
    XCTAssertEqual(UtilityWave469.label(), "wave-469")
  }
}
