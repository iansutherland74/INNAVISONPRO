import XCTest
@testable import VisionIINA

final class Wave716Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave716.value(), 716)
    XCTAssertEqual(UtilityWave716.label(), "wave-716")
  }
}
