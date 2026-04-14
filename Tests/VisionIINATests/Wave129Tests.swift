import XCTest
@testable import VisionIINA

final class Wave129Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave129.value(), 129)
    XCTAssertEqual(UtilityWave129.label(), "wave-129")
  }
}
