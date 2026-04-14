import XCTest
@testable import VisionIINA

final class Wave545Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave545.value(), 545)
    XCTAssertEqual(UtilityWave545.label(), "wave-545")
  }
}
