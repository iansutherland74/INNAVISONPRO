import XCTest
@testable import VisionIINA

final class Wave230Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave230.value(), 230)
    XCTAssertEqual(UtilityWave230.label(), "wave-230")
  }
}
