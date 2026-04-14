import XCTest
@testable import VisionIINA

final class Wave212Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave212.value(), 212)
    XCTAssertEqual(UtilityWave212.label(), "wave-212")
  }
}
