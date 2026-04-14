import XCTest
@testable import VisionIINA

final class Wave513Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave513.value(), 513)
    XCTAssertEqual(UtilityWave513.label(), "wave-513")
  }
}
