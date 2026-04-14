import XCTest
@testable import VisionIINA

final class Wave331Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave331.value(), 331)
    XCTAssertEqual(UtilityWave331.label(), "wave-331")
  }
}
