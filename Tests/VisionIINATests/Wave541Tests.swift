import XCTest
@testable import VisionIINA

final class Wave541Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave541.value(), 541)
    XCTAssertEqual(UtilityWave541.label(), "wave-541")
  }
}
