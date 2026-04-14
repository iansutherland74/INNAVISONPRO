import XCTest
@testable import VisionIINA

final class Wave375Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave375.value(), 375)
    XCTAssertEqual(UtilityWave375.label(), "wave-375")
  }
}
