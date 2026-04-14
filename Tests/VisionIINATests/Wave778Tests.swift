import XCTest
@testable import VisionIINA

final class Wave778Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave778.value(), 778)
    XCTAssertEqual(UtilityWave778.label(), "wave-778")
  }
}
