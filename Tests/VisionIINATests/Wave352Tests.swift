import XCTest
@testable import VisionIINA

final class Wave352Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave352.value(), 352)
    XCTAssertEqual(UtilityWave352.label(), "wave-352")
  }
}
