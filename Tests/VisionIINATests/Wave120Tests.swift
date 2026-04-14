import XCTest
@testable import VisionIINA

final class Wave120Tests: XCTestCase {
  func testFileExistencePolicy() {
    let url = FileManager.default.temporaryDirectory.appendingPathComponent("wave120.txt")
    try? FileManager.default.removeItem(at: url)
    XCTAssertFalse(UtilityFileExistencePolicy.exists(at: url))
    XCTAssertTrue(FileManager.default.createFile(atPath: url.path, contents: Data(), attributes: nil))
    XCTAssertTrue(UtilityFileExistencePolicy.exists(at: url))
  }
}