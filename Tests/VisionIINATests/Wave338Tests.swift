import XCTest
@testable import VisionIINA

final class Wave338Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave338.value(), 338)
    XCTAssertEqual(UtilityWave338.label(), "wave-338")
  }
}
