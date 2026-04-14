import XCTest
@testable import VisionIINA

final class Wave737Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave737.value(), 737)
    XCTAssertEqual(UtilityWave737.label(), "wave-737")
  }
}
