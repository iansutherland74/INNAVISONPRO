import XCTest
@testable import VisionIINA

final class Wave606Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave606.value(), 606)
    XCTAssertEqual(UtilityWave606.label(), "wave-606")
  }
}
