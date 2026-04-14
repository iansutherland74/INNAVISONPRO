import XCTest
@testable import VisionIINA

final class Wave790Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave790.value(), 790)
    XCTAssertEqual(UtilityWave790.label(), "wave-790")
  }
}
