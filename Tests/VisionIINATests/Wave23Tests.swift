import XCTest
@testable import VisionIINA

final class StringPathUtilsTests: XCTestCase {

    func testLowercasedPathExtension() {
        XCTAssertEqual(StringPathUtils.lowercasedPathExtension("/tmp/Movie.MKV"), "mkv")
        XCTAssertEqual(StringPathUtils.lowercasedPathExtension("/tmp/noext"), "")
    }

    func testIsDirectoryPath() throws {
        let dir = FileManager.default.temporaryDirectory.appendingPathComponent("vision-iina-tests/wave23-dir", isDirectory: true)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        let file = dir.appendingPathComponent("a.txt")
        try Data("x".utf8).write(to: file)

        XCTAssertTrue(StringPathUtils.isDirectoryPath(dir.path))
        XCTAssertFalse(StringPathUtils.isDirectoryPath(file.path))
    }
}
