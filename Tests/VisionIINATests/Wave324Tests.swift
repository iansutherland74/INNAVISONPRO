import XCTest
@testable import VisionIINA

final class Wave324Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave324.value(), 324)
    XCTAssertEqual(UtilityWave324.label(), "wave-324")
  }
}
