import XCTest
@testable import VisionIINA

final class Wave365Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave365.value(), 365)
    XCTAssertEqual(UtilityWave365.label(), "wave-365")
  }
}
