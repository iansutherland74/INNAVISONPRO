import XCTest
@testable import VisionIINA

final class Wave145Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave145.value(), 145)
    XCTAssertEqual(UtilityWave145.label(), "wave-145")
  }
}
