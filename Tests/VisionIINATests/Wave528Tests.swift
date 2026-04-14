import XCTest
@testable import VisionIINA

final class Wave528Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave528.value(), 528)
    XCTAssertEqual(UtilityWave528.label(), "wave-528")
  }
}
