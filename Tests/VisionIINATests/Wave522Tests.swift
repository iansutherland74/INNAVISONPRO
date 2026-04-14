import XCTest
@testable import VisionIINA

final class Wave522Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave522.value(), 522)
    XCTAssertEqual(UtilityWave522.label(), "wave-522")
  }
}
