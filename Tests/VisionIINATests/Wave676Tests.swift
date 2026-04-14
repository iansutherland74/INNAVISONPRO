import XCTest
@testable import VisionIINA

final class Wave676Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave676.value(), 676)
    XCTAssertEqual(UtilityWave676.label(), "wave-676")
  }
}
