import XCTest
@testable import VisionIINA

final class Wave399Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave399.value(), 399)
    XCTAssertEqual(UtilityWave399.label(), "wave-399")
  }
}
