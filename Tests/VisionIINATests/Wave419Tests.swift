import XCTest
@testable import VisionIINA

final class Wave419Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave419.value(), 419)
    XCTAssertEqual(UtilityWave419.label(), "wave-419")
  }
}
