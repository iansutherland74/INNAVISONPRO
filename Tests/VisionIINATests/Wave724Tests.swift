import XCTest
@testable import VisionIINA

final class Wave724Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave724.value(), 724)
    XCTAssertEqual(UtilityWave724.label(), "wave-724")
  }
}
