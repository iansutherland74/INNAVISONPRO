import XCTest
@testable import VisionIINA

final class Wave294Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave294.value(), 294)
    XCTAssertEqual(UtilityWave294.label(), "wave-294")
  }
}
