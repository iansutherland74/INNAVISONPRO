import XCTest
@testable import VisionIINA

final class Wave269Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave269.value(), 269)
    XCTAssertEqual(UtilityWave269.label(), "wave-269")
  }
}
