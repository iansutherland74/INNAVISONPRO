import XCTest
@testable import VisionIINA

final class Wave447Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave447.value(), 447)
    XCTAssertEqual(UtilityWave447.label(), "wave-447")
  }
}
