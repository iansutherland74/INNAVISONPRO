import XCTest
@testable import VisionIINA

final class Wave564Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave564.value(), 564)
    XCTAssertEqual(UtilityWave564.label(), "wave-564")
  }
}
