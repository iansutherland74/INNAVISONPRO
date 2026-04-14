import XCTest
@testable import VisionIINA

final class Wave389Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave389.value(), 389)
    XCTAssertEqual(UtilityWave389.label(), "wave-389")
  }
}
