import XCTest
@testable import VisionIINA

final class Wave314Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave314.value(), 314)
    XCTAssertEqual(UtilityWave314.label(), "wave-314")
  }
}
