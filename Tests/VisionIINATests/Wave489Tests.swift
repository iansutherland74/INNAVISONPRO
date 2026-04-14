import XCTest
@testable import VisionIINA

final class Wave489Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave489.value(), 489)
    XCTAssertEqual(UtilityWave489.label(), "wave-489")
  }
}
