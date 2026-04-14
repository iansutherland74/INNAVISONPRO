import XCTest
@testable import VisionIINA

final class Wave766Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave766.value(), 766)
    XCTAssertEqual(UtilityWave766.label(), "wave-766")
  }
}
