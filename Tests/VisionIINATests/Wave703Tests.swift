import XCTest
@testable import VisionIINA

final class Wave703Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave703.value(), 703)
    XCTAssertEqual(UtilityWave703.label(), "wave-703")
  }
}
