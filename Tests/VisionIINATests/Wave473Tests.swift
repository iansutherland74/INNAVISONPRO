import XCTest
@testable import VisionIINA

final class Wave473Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave473.value(), 473)
    XCTAssertEqual(UtilityWave473.label(), "wave-473")
  }
}
