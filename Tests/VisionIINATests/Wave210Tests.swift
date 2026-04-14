import XCTest
@testable import VisionIINA

final class Wave210Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave210.value(), 210)
    XCTAssertEqual(UtilityWave210.label(), "wave-210")
  }
}
