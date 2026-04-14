import XCTest
@testable import VisionIINA

final class Wave222Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave222.value(), 222)
    XCTAssertEqual(UtilityWave222.label(), "wave-222")
  }
}
