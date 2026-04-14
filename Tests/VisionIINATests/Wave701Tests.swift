import XCTest
@testable import VisionIINA

final class Wave701Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave701.value(), 701)
    XCTAssertEqual(UtilityWave701.label(), "wave-701")
  }
}
