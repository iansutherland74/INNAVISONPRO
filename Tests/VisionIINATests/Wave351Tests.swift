import XCTest
@testable import VisionIINA

final class Wave351Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave351.value(), 351)
    XCTAssertEqual(UtilityWave351.label(), "wave-351")
  }
}
