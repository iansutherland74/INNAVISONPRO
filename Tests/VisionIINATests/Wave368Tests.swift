import XCTest
@testable import VisionIINA

final class Wave368Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave368.value(), 368)
    XCTAssertEqual(UtilityWave368.label(), "wave-368")
  }
}
