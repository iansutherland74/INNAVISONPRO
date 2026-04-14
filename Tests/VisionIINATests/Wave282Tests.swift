import XCTest
@testable import VisionIINA

final class Wave282Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave282.value(), 282)
    XCTAssertEqual(UtilityWave282.label(), "wave-282")
  }
}
