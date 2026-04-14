import XCTest
@testable import VisionIINA

final class Wave273Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave273.value(), 273)
    XCTAssertEqual(UtilityWave273.label(), "wave-273")
  }
}
