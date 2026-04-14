import XCTest
@testable import VisionIINA

final class Wave454Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave454.value(), 454)
    XCTAssertEqual(UtilityWave454.label(), "wave-454")
  }
}
