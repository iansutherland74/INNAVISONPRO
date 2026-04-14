import XCTest
@testable import VisionIINA

final class Wave556Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave556.value(), 556)
    XCTAssertEqual(UtilityWave556.label(), "wave-556")
  }
}
