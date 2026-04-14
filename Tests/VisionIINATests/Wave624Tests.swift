import XCTest
@testable import VisionIINA

final class Wave624Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave624.value(), 624)
    XCTAssertEqual(UtilityWave624.label(), "wave-624")
  }
}
