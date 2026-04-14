import XCTest
@testable import VisionIINA

final class Wave177Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave177.value(), 177)
    XCTAssertEqual(UtilityWave177.label(), "wave-177")
  }
}
