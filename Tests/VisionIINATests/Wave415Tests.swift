import XCTest
@testable import VisionIINA

final class Wave415Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave415.value(), 415)
    XCTAssertEqual(UtilityWave415.label(), "wave-415")
  }
}
