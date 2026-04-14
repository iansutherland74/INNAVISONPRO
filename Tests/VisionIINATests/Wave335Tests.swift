import XCTest
@testable import VisionIINA

final class Wave335Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave335.value(), 335)
    XCTAssertEqual(UtilityWave335.label(), "wave-335")
  }
}
