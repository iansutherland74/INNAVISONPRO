import XCTest
@testable import VisionIINA

final class Wave793Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave793.value(), 793)
    XCTAssertEqual(UtilityWave793.label(), "wave-793")
  }
}
