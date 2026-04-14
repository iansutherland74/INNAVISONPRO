import XCTest
@testable import VisionIINA

final class Wave625Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave625.value(), 625)
    XCTAssertEqual(UtilityWave625.label(), "wave-625")
  }
}
