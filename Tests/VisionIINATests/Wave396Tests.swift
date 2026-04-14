import XCTest
@testable import VisionIINA

final class Wave396Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave396.value(), 396)
    XCTAssertEqual(UtilityWave396.label(), "wave-396")
  }
}
