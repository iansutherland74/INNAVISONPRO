import XCTest
@testable import VisionIINA

final class Wave753Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave753.value(), 753)
    XCTAssertEqual(UtilityWave753.label(), "wave-753")
  }
}
