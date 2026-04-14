import XCTest
@testable import VisionIINA

final class Wave438Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave438.value(), 438)
    XCTAssertEqual(UtilityWave438.label(), "wave-438")
  }
}
