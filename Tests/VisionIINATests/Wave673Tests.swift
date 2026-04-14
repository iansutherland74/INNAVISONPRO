import XCTest
@testable import VisionIINA

final class Wave673Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave673.value(), 673)
    XCTAssertEqual(UtilityWave673.label(), "wave-673")
  }
}
