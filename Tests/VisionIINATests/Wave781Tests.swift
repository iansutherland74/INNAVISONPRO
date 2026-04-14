import XCTest
@testable import VisionIINA

final class Wave781Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave781.value(), 781)
    XCTAssertEqual(UtilityWave781.label(), "wave-781")
  }
}
