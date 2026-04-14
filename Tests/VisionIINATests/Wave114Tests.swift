import XCTest
@testable import VisionIINA

final class Wave114Tests: XCTestCase {
  func testDisplayScaleMapping() {
    XCTAssertEqual(UtilitySubtitleScaleMapper.toDisplayScale(from: 2), 2)
    XCTAssertEqual(UtilitySubtitleScaleMapper.toDisplayScale(from: 0.5), -2)
  }
}