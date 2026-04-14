import XCTest
@testable import VisionIINA

final class Wave416Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave416.value(), 416)
    XCTAssertEqual(UtilityWave416.label(), "wave-416")
  }
}
