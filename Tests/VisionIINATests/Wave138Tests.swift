import XCTest
@testable import VisionIINA

final class Wave138Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave138.value(), 138)
    XCTAssertEqual(UtilityWave138.label(), "wave-138")
  }
}
