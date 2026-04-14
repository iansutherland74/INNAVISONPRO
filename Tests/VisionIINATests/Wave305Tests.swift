import XCTest
@testable import VisionIINA

final class Wave305Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave305.value(), 305)
    XCTAssertEqual(UtilityWave305.label(), "wave-305")
  }
}
