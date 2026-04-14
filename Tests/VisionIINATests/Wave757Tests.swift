import XCTest
@testable import VisionIINA

final class Wave757Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave757.value(), 757)
    XCTAssertEqual(UtilityWave757.label(), "wave-757")
  }
}
