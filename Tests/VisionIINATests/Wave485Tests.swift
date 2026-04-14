import XCTest
@testable import VisionIINA

final class Wave485Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave485.value(), 485)
    XCTAssertEqual(UtilityWave485.label(), "wave-485")
  }
}
