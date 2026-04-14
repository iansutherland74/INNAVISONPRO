import XCTest
@testable import VisionIINA

final class Wave118Tests: XCTestCase {
  func testReadFiles() throws {
    let dir = FileManager.default.temporaryDirectory.appendingPathComponent("wave118", isDirectory: true)
    try? FileManager.default.removeItem(at: dir)
    try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
    let file = dir.appendingPathComponent("a.txt")
    XCTAssertTrue(FileManager.default.createFile(atPath: file.path, contents: Data(), attributes: nil))
    XCTAssertFalse(UtilityDirectoryContentsReader.readFiles(in: dir).isEmpty)
  }
}