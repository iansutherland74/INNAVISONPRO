import XCTest
@testable import VisionIINA

final class Wave333Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave333.value(), 333)
    XCTAssertEqual(UtilityWave333.label(), "wave-333")
  }
}
