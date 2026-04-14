import XCTest
@testable import VisionIINA

final class Wave527Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave527.value(), 527)
    XCTAssertEqual(UtilityWave527.label(), "wave-527")
  }
}
