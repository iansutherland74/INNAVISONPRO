import XCTest
@testable import VisionIINA

final class Wave376Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave376.value(), 376)
    XCTAssertEqual(UtilityWave376.label(), "wave-376")
  }
}
