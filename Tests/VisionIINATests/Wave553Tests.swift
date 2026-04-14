import XCTest
@testable import VisionIINA

final class Wave553Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave553.value(), 553)
    XCTAssertEqual(UtilityWave553.label(), "wave-553")
  }
}
