import XCTest
@testable import VisionIINA

final class Wave743Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave743.value(), 743)
    XCTAssertEqual(UtilityWave743.label(), "wave-743")
  }
}
