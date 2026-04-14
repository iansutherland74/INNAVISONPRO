import XCTest
@testable import VisionIINA

final class Wave436Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave436.value(), 436)
    XCTAssertEqual(UtilityWave436.label(), "wave-436")
  }
}
