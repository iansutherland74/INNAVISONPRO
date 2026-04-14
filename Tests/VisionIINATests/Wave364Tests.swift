import XCTest
@testable import VisionIINA

final class Wave364Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave364.value(), 364)
    XCTAssertEqual(UtilityWave364.label(), "wave-364")
  }
}
