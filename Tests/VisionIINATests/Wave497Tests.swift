import XCTest
@testable import VisionIINA

final class Wave497Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave497.value(), 497)
    XCTAssertEqual(UtilityWave497.label(), "wave-497")
  }
}
