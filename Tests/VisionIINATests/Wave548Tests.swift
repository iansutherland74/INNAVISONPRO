import XCTest
@testable import VisionIINA

final class Wave548Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave548.value(), 548)
    XCTAssertEqual(UtilityWave548.label(), "wave-548")
  }
}
