import XCTest
@testable import VisionIINA

final class Wave576Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave576.value(), 576)
    XCTAssertEqual(UtilityWave576.label(), "wave-576")
  }
}
