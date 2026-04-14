import XCTest
@testable import VisionIINA

final class Wave439Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave439.value(), 439)
    XCTAssertEqual(UtilityWave439.label(), "wave-439")
  }
}
