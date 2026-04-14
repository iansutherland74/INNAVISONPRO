import XCTest
@testable import VisionIINA

final class Wave466Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave466.value(), 466)
    XCTAssertEqual(UtilityWave466.label(), "wave-466")
  }
}
