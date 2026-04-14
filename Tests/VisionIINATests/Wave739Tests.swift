import XCTest
@testable import VisionIINA

final class Wave739Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave739.value(), 739)
    XCTAssertEqual(UtilityWave739.label(), "wave-739")
  }
}
