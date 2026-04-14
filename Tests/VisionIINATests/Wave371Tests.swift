import XCTest
@testable import VisionIINA

final class Wave371Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave371.value(), 371)
    XCTAssertEqual(UtilityWave371.label(), "wave-371")
  }
}
