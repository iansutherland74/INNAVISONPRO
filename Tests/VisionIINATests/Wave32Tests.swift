import XCTest
@testable import VisionIINA

final class FileChunkReaderTests: XCTestCase {

    func testReadChunksAtOffsets() throws {
        let dir = FileManager.default.temporaryDirectory.appendingPathComponent("vision-iina-tests/wave32", isDirectory: true)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        let fileURL = dir.appendingPathComponent("chunks.bin")
        let bytes = Data((0..<100).map { UInt8($0) })
        try bytes.write(to: fileURL)

        let handle = try FileHandle(forReadingFrom: fileURL)
        defer { handle.closeFile() }

        let chunks = FileChunkReader.readChunks(from: handle, offsets: [0, 10, 90], chunkSize: 10)
        XCTAssertEqual(chunks.count, 3)
        XCTAssertEqual(chunks[0], Data((0..<10).map { UInt8($0) }))
        XCTAssertEqual(chunks[1], Data((10..<20).map { UInt8($0) }))
        XCTAssertEqual(chunks[2], Data((90..<100).map { UInt8($0) }))
    }
}
