import XCTest
@testable import VisionIINA

final class Wave747Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave747.value(), 747)
    XCTAssertEqual(UtilityWave747.label(), "wave-747")
  }
}
