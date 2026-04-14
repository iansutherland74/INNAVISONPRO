import XCTest
@testable import VisionIINA

final class Wave558Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave558.value(), 558)
    XCTAssertEqual(UtilityWave558.label(), "wave-558")
  }
}
