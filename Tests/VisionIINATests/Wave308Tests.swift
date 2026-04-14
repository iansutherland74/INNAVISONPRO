import XCTest
@testable import VisionIINA

final class Wave308Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave308.value(), 308)
    XCTAssertEqual(UtilityWave308.label(), "wave-308")
  }
}
