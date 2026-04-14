import XCTest
@testable import VisionIINA

final class Wave727Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave727.value(), 727)
    XCTAssertEqual(UtilityWave727.label(), "wave-727")
  }
}
