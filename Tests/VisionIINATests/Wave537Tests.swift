import XCTest
@testable import VisionIINA

final class Wave537Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave537.value(), 537)
    XCTAssertEqual(UtilityWave537.label(), "wave-537")
  }
}
