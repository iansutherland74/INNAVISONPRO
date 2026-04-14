import XCTest
@testable import VisionIINA

final class Wave786Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave786.value(), 786)
    XCTAssertEqual(UtilityWave786.label(), "wave-786")
  }
}
