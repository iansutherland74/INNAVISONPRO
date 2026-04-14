import XCTest
@testable import VisionIINA

final class Wave725Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave725.value(), 725)
    XCTAssertEqual(UtilityWave725.label(), "wave-725")
  }
}
