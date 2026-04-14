import XCTest
@testable import VisionIINA

final class Wave720Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave720.value(), 720)
    XCTAssertEqual(UtilityWave720.label(), "wave-720")
  }
}
