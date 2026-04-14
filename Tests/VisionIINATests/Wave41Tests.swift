import XCTest
@testable import VisionIINA

final class FileSizeReaderTests: XCTestCase {
    func testReadsSizeFromFileHandle() throws {
        let url = FileManager.default.temporaryDirectory.appendingPathComponent("wave41.bin")
        try Data(repeating: 1, count: 42).write(to: url)
        let handle = try FileHandle(forReadingFrom: url)
        defer { handle.closeFile() }
        XCTAssertEqual(FileSizeReader.size(of: handle), 42)
    }
}
