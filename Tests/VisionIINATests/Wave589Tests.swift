import XCTest
@testable import VisionIINA

final class Wave589Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave589.value(), 589)
    XCTAssertEqual(UtilityWave589.label(), "wave-589")
  }
}
