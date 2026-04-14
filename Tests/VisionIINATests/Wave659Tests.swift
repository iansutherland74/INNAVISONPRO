import XCTest
@testable import VisionIINA

final class Wave659Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave659.value(), 659)
    XCTAssertEqual(UtilityWave659.label(), "wave-659")
  }
}
