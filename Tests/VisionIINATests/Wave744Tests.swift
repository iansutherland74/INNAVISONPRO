import XCTest
@testable import VisionIINA

final class Wave744Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave744.value(), 744)
    XCTAssertEqual(UtilityWave744.label(), "wave-744")
  }
}
