import XCTest
@testable import VisionIINA

final class Wave346Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave346.value(), 346)
    XCTAssertEqual(UtilityWave346.label(), "wave-346")
  }
}
