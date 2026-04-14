import XCTest
@testable import VisionIINA

final class Wave155Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave155.value(), 155)
    XCTAssertEqual(UtilityWave155.label(), "wave-155")
  }
}
