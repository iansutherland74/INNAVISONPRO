import XCTest
@testable import VisionIINA

final class Wave531Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave531.value(), 531)
    XCTAssertEqual(UtilityWave531.label(), "wave-531")
  }
}
