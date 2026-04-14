import XCTest
@testable import VisionIINA

final class Wave533Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave533.value(), 533)
    XCTAssertEqual(UtilityWave533.label(), "wave-533")
  }
}
