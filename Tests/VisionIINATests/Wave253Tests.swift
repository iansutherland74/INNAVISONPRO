import XCTest
@testable import VisionIINA

final class Wave253Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave253.value(), 253)
    XCTAssertEqual(UtilityWave253.label(), "wave-253")
  }
}
