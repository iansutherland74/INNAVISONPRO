import XCTest
@testable import VisionIINA

final class Wave501Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave501.value(), 501)
    XCTAssertEqual(UtilityWave501.label(), "wave-501")
  }
}
