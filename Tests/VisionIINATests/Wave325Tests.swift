import XCTest
@testable import VisionIINA

final class Wave325Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave325.value(), 325)
    XCTAssertEqual(UtilityWave325.label(), "wave-325")
  }
}
