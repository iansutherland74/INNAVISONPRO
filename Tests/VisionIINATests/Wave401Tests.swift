import XCTest
@testable import VisionIINA

final class Wave401Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave401.value(), 401)
    XCTAssertEqual(UtilityWave401.label(), "wave-401")
  }
}
