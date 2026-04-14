import XCTest
@testable import VisionIINA

final class Wave390Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave390.value(), 390)
    XCTAssertEqual(UtilityWave390.label(), "wave-390")
  }
}
