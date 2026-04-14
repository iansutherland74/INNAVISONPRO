import XCTest
@testable import VisionIINA

final class Wave699Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave699.value(), 699)
    XCTAssertEqual(UtilityWave699.label(), "wave-699")
  }
}
