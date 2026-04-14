import XCTest
@testable import VisionIINA

final class Wave115Tests: XCTestCase {
  func testWatchLaterFileLocation() {
    let base = URL(fileURLWithPath: "/tmp/wl", isDirectory: true)
    XCTAssertEqual(UtilityWatchLaterFileLocator.fileURL(baseURL: base, watchLaterID: "abc").path, "/tmp/wl/abc")
  }
}