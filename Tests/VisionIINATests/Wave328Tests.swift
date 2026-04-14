import XCTest
@testable import VisionIINA

final class Wave328Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave328.value(), 328)
    XCTAssertEqual(UtilityWave328.label(), "wave-328")
  }
}
