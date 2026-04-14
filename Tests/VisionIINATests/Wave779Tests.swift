import XCTest
@testable import VisionIINA

final class Wave779Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave779.value(), 779)
    XCTAssertEqual(UtilityWave779.label(), "wave-779")
  }
}
