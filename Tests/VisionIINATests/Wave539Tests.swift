import XCTest
@testable import VisionIINA

final class Wave539Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave539.value(), 539)
    XCTAssertEqual(UtilityWave539.label(), "wave-539")
  }
}
