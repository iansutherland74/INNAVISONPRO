import XCTest
@testable import VisionIINA

final class Wave664Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave664.value(), 664)
    XCTAssertEqual(UtilityWave664.label(), "wave-664")
  }
}
