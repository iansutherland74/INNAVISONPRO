import XCTest
@testable import VisionIINA

final class Wave239Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave239.value(), 239)
    XCTAssertEqual(UtilityWave239.label(), "wave-239")
  }
}
