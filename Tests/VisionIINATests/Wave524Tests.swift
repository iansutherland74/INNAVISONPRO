import XCTest
@testable import VisionIINA

final class Wave524Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave524.value(), 524)
    XCTAssertEqual(UtilityWave524.label(), "wave-524")
  }
}
