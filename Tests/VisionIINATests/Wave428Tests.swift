import XCTest
@testable import VisionIINA

final class Wave428Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave428.value(), 428)
    XCTAssertEqual(UtilityWave428.label(), "wave-428")
  }
}
