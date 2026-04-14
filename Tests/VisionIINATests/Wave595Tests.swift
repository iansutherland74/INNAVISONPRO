import XCTest
@testable import VisionIINA

final class Wave595Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave595.value(), 595)
    XCTAssertEqual(UtilityWave595.label(), "wave-595")
  }
}
