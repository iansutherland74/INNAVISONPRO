import XCTest
@testable import VisionIINA

final class Wave685Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave685.value(), 685)
    XCTAssertEqual(UtilityWave685.label(), "wave-685")
  }
}
