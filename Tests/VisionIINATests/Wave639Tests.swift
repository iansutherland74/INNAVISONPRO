import XCTest
@testable import VisionIINA

final class Wave639Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave639.value(), 639)
    XCTAssertEqual(UtilityWave639.label(), "wave-639")
  }
}
