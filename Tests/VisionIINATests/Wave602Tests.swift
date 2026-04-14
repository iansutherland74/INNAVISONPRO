import XCTest
@testable import VisionIINA

final class Wave602Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave602.value(), 602)
    XCTAssertEqual(UtilityWave602.label(), "wave-602")
  }
}
