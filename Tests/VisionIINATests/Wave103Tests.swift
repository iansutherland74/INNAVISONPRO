import XCTest
@testable import VisionIINA

final class Wave103Tests: XCTestCase {
  func testNormalizedExtensionAndPlayableCheck() {
    XCTAssertEqual(UtilityFileTypeSets.normalizedExtension(" MKV "), "mkv")
    XCTAssertTrue(UtilityFileTypeSets.isPlayable("MP4"))
    XCTAssertFalse(UtilityFileTypeSets.isPlayable("txt"))
  }

  func testFileInfoUsesNormalizedExtension() {
    let info = FileInfo(URL(fileURLWithPath: "/tmp/Movie.MKV"))
    XCTAssertEqual(info.ext, "mkv")
  }
}