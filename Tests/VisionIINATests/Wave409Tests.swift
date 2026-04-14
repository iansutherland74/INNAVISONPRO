import XCTest
@testable import VisionIINA

final class Wave409Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave409.value(), 409)
    XCTAssertEqual(UtilityWave409.label(), "wave-409")
  }
}
