import XCTest
@testable import VisionIINA

final class Wave741Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave741.value(), 741)
    XCTAssertEqual(UtilityWave741.label(), "wave-741")
  }
}
