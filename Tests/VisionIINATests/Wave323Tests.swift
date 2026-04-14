import XCTest
@testable import VisionIINA

final class Wave323Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave323.value(), 323)
    XCTAssertEqual(UtilityWave323.label(), "wave-323")
  }
}
