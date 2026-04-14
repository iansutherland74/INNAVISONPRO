import XCTest
@testable import VisionIINA

final class Wave653Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave653.value(), 653)
    XCTAssertEqual(UtilityWave653.label(), "wave-653")
  }
}
