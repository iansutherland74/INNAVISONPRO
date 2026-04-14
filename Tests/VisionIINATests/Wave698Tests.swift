import XCTest
@testable import VisionIINA

final class Wave698Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave698.value(), 698)
    XCTAssertEqual(UtilityWave698.label(), "wave-698")
  }
}
