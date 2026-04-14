import XCTest
@testable import VisionIINA

final class Wave290Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave290.value(), 290)
    XCTAssertEqual(UtilityWave290.label(), "wave-290")
  }
}
