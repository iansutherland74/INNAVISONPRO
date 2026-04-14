import XCTest
@testable import VisionIINA

final class Wave151Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave151.value(), 151)
    XCTAssertEqual(UtilityWave151.label(), "wave-151")
  }
}
