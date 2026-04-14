import XCTest
@testable import VisionIINA

final class Wave104Tests: XCTestCase {
  func testPlaylistPolicies() {
    XCTAssertTrue(UtilityPlaylistFileTypePolicy.isSingleFilePlaylist(" CUE "))
    XCTAssertTrue(UtilityPlaylistFileTypePolicy.isMultipleFilePlaylist("m3u8"))
    XCTAssertTrue(UtilityPlaylistFileTypePolicy.isPlaylist("pls"))
    XCTAssertFalse(UtilityPlaylistFileTypePolicy.isPlaylist("mp4"))
  }
}