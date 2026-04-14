import XCTest
@testable import VisionIINA

final class Wave116Tests: XCTestCase {
  func testWatchLaterProgressLoad() throws {
    let fileURL = FileManager.default.temporaryDirectory.appendingPathComponent("wave116-watchlater.txt")
    try Data("start=42.5\n".utf8).write(to: fileURL)
    XCTAssertEqual(UtilityWatchLaterProgressLoader.loadSeconds(from: fileURL), 42.5)
  }
}