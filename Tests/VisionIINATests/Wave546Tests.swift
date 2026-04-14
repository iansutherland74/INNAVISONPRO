import XCTest
@testable import VisionIINA

final class Wave546Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave546.value(), 546)
    XCTAssertEqual(UtilityWave546.label(), "wave-546")
  }
}
