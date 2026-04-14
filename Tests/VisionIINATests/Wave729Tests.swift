import XCTest
@testable import VisionIINA

final class Wave729Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave729.value(), 729)
    XCTAssertEqual(UtilityWave729.label(), "wave-729")
  }
}
