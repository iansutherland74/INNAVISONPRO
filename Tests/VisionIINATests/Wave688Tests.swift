import XCTest
@testable import VisionIINA

final class Wave688Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave688.value(), 688)
    XCTAssertEqual(UtilityWave688.label(), "wave-688")
  }
}
