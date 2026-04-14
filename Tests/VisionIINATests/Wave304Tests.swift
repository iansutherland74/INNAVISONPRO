import XCTest
@testable import VisionIINA

final class Wave304Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave304.value(), 304)
    XCTAssertEqual(UtilityWave304.label(), "wave-304")
  }
}
