import XCTest
@testable import VisionIINA

final class Wave119Tests: XCTestCase {
  func testLatestScreenshotFinder() throws {
    let dir = FileManager.default.temporaryDirectory.appendingPathComponent("wave119", isDirectory: true)
    try? FileManager.default.removeItem(at: dir)
    try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
    let first = dir.appendingPathComponent("1.png")
    let second = dir.appendingPathComponent("2.png")
    try Data().write(to: first)
    usleep(20_000)
    try Data().write(to: second)
    XCTAssertEqual(UtilityLatestScreenshotFinder.latest(from: dir.path)?.lastPathComponent, "2.png")
  }
}