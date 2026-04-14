import XCTest
@testable import VisionIINA

final class Wave336Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave336.value(), 336)
    XCTAssertEqual(UtilityWave336.label(), "wave-336")
  }
}
