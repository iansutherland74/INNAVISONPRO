import XCTest
@testable import VisionIINA

final class Wave768Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave768.value(), 768)
    XCTAssertEqual(UtilityWave768.label(), "wave-768")
  }
}
