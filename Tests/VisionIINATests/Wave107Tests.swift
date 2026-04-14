import XCTest
@testable import VisionIINA

final class Wave107Tests: XCTestCase {
  func testEnsureDirectoryExists() throws {
    let root = FileManager.default.temporaryDirectory.appendingPathComponent("wave107", isDirectory: true)
    try? FileManager.default.removeItem(at: root)
    XCTAssertTrue(try UtilityDirectoryEnsurer.ensureExists(at: root))
    XCTAssertFalse(try UtilityDirectoryEnsurer.ensureExists(at: root))
  }
}