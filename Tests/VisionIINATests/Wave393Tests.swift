import XCTest
@testable import VisionIINA

final class Wave393Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave393.value(), 393)
    XCTAssertEqual(UtilityWave393.label(), "wave-393")
  }
}
