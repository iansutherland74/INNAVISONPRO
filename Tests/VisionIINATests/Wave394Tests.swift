import XCTest
@testable import VisionIINA

final class Wave394Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave394.value(), 394)
    XCTAssertEqual(UtilityWave394.label(), "wave-394")
  }
}
