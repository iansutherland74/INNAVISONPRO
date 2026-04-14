import XCTest
@testable import VisionIINA

final class Wave593Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave593.value(), 593)
    XCTAssertEqual(UtilityWave593.label(), "wave-593")
  }
}
