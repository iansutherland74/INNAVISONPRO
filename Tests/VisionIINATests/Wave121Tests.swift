import XCTest
@testable import VisionIINA

final class Wave121Tests: XCTestCase {
  func testDirectoryBuilder() {
    let base = URL(fileURLWithPath: "/tmp", isDirectory: true)
    let built = UtilityDirectoryBuilder.appendingDirectory(baseURL: base, name: "folder")
    XCTAssertTrue(built.path.hasSuffix("/folder"))
  }
}