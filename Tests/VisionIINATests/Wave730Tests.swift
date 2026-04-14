import XCTest
@testable import VisionIINA

final class Wave730Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave730.value(), 730)
    XCTAssertEqual(UtilityWave730.label(), "wave-730")
  }
}
