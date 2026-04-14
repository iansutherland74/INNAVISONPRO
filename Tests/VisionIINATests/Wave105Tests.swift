import XCTest
@testable import VisionIINA

final class Wave105Tests: XCTestCase {
  func testContainsSubtitlesPolicy() {
    XCTAssertTrue(UtilitySubtitleContainerPolicy.canContainSubtitles("srt"))
    XCTAssertTrue(UtilitySubtitleContainerPolicy.canContainSubtitles("MKV"))
    XCTAssertFalse(UtilitySubtitleContainerPolicy.canContainSubtitles("txt"))
  }
}