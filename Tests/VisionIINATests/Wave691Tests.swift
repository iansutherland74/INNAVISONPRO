import XCTest
@testable import VisionIINA

final class Wave691Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave691.value(), 691)
    XCTAssertEqual(UtilityWave691.label(), "wave-691")
  }
}
