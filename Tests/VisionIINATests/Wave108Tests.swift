import XCTest
@testable import VisionIINA

final class Wave108Tests: XCTestCase {
  func testEnsureFileExists() {
    let path = FileManager.default.temporaryDirectory.appendingPathComponent("wave108.txt")
    try? FileManager.default.removeItem(at: path)
    XCTAssertTrue(UtilityFileEnsurer.ensureExists(at: path))
    XCTAssertFalse(UtilityFileEnsurer.ensureExists(at: path))
  }
}