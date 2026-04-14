import XCTest
@testable import VisionIINA

final class Wave460Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave460.value(), 460)
    XCTAssertEqual(UtilityWave460.label(), "wave-460")
  }
}
