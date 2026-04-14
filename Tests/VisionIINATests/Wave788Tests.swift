import XCTest
@testable import VisionIINA

final class Wave788Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave788.value(), 788)
    XCTAssertEqual(UtilityWave788.label(), "wave-788")
  }
}
