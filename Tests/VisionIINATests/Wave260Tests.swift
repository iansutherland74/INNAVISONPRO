import XCTest
@testable import VisionIINA

final class Wave260Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave260.value(), 260)
    XCTAssertEqual(UtilityWave260.label(), "wave-260")
  }
}
