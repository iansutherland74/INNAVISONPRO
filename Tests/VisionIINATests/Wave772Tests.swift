import XCTest
@testable import VisionIINA

final class Wave772Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave772.value(), 772)
    XCTAssertEqual(UtilityWave772.label(), "wave-772")
  }
}
