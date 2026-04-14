import XCTest
@testable import VisionIINA

final class Wave312Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave312.value(), 312)
    XCTAssertEqual(UtilityWave312.label(), "wave-312")
  }
}
