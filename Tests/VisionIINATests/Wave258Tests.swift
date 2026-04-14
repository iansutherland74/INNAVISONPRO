import XCTest
@testable import VisionIINA

final class Wave258Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave258.value(), 258)
    XCTAssertEqual(UtilityWave258.label(), "wave-258")
  }
}
