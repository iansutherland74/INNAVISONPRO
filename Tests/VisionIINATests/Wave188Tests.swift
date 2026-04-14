import XCTest
@testable import VisionIINA

final class Wave188Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave188.value(), 188)
    XCTAssertEqual(UtilityWave188.label(), "wave-188")
  }
}
