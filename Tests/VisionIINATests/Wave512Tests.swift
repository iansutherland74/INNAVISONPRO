import XCTest
@testable import VisionIINA

final class Wave512Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave512.value(), 512)
    XCTAssertEqual(UtilityWave512.label(), "wave-512")
  }
}
