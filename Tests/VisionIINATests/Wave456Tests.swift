import XCTest
@testable import VisionIINA

final class Wave456Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave456.value(), 456)
    XCTAssertEqual(UtilityWave456.label(), "wave-456")
  }
}
