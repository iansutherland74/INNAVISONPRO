import XCTest
@testable import VisionIINA

final class Wave618Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave618.value(), 618)
    XCTAssertEqual(UtilityWave618.label(), "wave-618")
  }
}
