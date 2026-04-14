import XCTest
@testable import VisionIINA

final class Wave276Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave276.value(), 276)
    XCTAssertEqual(UtilityWave276.label(), "wave-276")
  }
}
