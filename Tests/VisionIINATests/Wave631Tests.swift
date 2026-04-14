import XCTest
@testable import VisionIINA

final class Wave631Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave631.value(), 631)
    XCTAssertEqual(UtilityWave631.label(), "wave-631")
  }
}
