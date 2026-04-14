import XCTest
@testable import VisionIINA

final class Wave467Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave467.value(), 467)
    XCTAssertEqual(UtilityWave467.label(), "wave-467")
  }
}
