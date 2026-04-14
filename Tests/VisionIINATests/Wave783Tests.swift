import XCTest
@testable import VisionIINA

final class Wave783Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave783.value(), 783)
    XCTAssertEqual(UtilityWave783.label(), "wave-783")
  }
}
