import XCTest
@testable import VisionIINA

final class Wave549Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave549.value(), 549)
    XCTAssertEqual(UtilityWave549.label(), "wave-549")
  }
}
