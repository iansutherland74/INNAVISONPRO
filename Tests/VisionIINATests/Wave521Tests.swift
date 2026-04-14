import XCTest
@testable import VisionIINA

final class Wave521Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave521.value(), 521)
    XCTAssertEqual(UtilityWave521.label(), "wave-521")
  }
}
