import XCTest
@testable import VisionIINA

final class Wave677Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave677.value(), 677)
    XCTAssertEqual(UtilityWave677.label(), "wave-677")
  }
}
