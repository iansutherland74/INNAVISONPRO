import XCTest
@testable import VisionIINA

final class Wave437Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave437.value(), 437)
    XCTAssertEqual(UtilityWave437.label(), "wave-437")
  }
}
