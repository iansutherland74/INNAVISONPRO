import XCTest
@testable import VisionIINA

final class Wave404Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave404.value(), 404)
    XCTAssertEqual(UtilityWave404.label(), "wave-404")
  }
}
