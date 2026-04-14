import XCTest
@testable import VisionIINA

final class Wave380Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave380.value(), 380)
    XCTAssertEqual(UtilityWave380.label(), "wave-380")
  }
}
