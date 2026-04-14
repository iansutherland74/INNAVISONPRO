import XCTest
@testable import VisionIINA

final class Wave377Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave377.value(), 377)
    XCTAssertEqual(UtilityWave377.label(), "wave-377")
  }
}
