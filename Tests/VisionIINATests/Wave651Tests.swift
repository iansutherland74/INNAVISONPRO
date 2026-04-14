import XCTest
@testable import VisionIINA

final class Wave651Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave651.value(), 651)
    XCTAssertEqual(UtilityWave651.label(), "wave-651")
  }
}
