import XCTest
@testable import VisionIINA

final class Wave543Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave543.value(), 543)
    XCTAssertEqual(UtilityWave543.label(), "wave-543")
  }
}
