import XCTest
@testable import VisionIINA

final class Wave733Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave733.value(), 733)
    XCTAssertEqual(UtilityWave733.label(), "wave-733")
  }
}
