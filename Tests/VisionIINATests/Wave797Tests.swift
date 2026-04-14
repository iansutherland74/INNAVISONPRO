import XCTest
@testable import VisionIINA

final class Wave797Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave797.value(), 797)
    XCTAssertEqual(UtilityWave797.label(), "wave-797")
  }
}
