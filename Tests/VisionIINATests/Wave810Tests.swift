import XCTest
@testable import VisionIINA

final class Wave810Tests: XCTestCase {
  func testFolderNames() {
    XCTAssertEqual(AppDataFolderConstants.userInputConfFolder, "input_conf")
    XCTAssertEqual(AppDataFolderConstants.watchLaterFolder, "watch_later")
    XCTAssertEqual(AppDataFolderConstants.pluginsFolder, "plugins")
    XCTAssertEqual(AppDataFolderConstants.binariesFolder, "bin")
    XCTAssertEqual(AppDataFolderConstants.historyFile, "history.plist")
    XCTAssertEqual(AppDataFolderConstants.thumbnailCacheFolder, "thumb_cache")
    XCTAssertEqual(AppDataFolderConstants.screenshotCacheFolder, "screenshot_cache")
  }
  func testSupportURL() {
    let url = AppDataFolderConstants.supportURL(for: "plugins")
    XCTAssertTrue(url.path.hasSuffix("iina/plugins"))
  }
}
