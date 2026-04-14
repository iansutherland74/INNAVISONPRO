import XCTest
@testable import VisionIINA

final class OpenSubHashTests: XCTestCase {

    private func makeTempFile(named name: String, data: Data) throws -> URL {
        let dir = FileManager.default.temporaryDirectory
            .appendingPathComponent("vision-iina-tests", isDirectory: true)
            .appendingPathComponent("wave18", isDirectory: true)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        let fileURL = dir.appendingPathComponent(name, isDirectory: false)
        try data.write(to: fileURL)
        return fileURL
    }

    private func checksum64(_ data: Data) -> UInt64 {
        data.withUnsafeBytes { rawBuffer in
            rawBuffer.bindMemory(to: UInt64.self).reduce(0, &+)
        }
    }

    func testReturnsNilForNonFileURL() throws {
        let value = try OpenSubHash.hash(for: URL(string: "https://example.com/video.mkv")!)
        XCTAssertNil(value)
    }

    func testThrowsForTooSmallFile() throws {
        let url = try makeTempFile(named: "small.bin", data: Data(repeating: 0xAB, count: 8))

        do {
            _ = try OpenSubHash.hash(for: url, minimumFileSize: 8, chunkSize: 8)
            XCTFail("Expected fileTooSmall error")
        } catch let error as OpenSubHashError {
            XCTAssertEqual(error, .fileTooSmall(8))
        }
    }

    func testHashMatchesExpectedForKnownData() throws {
        let bytes = Array<UInt8>(0..<40)
        let data = Data(bytes)
        let url = try makeTempFile(named: "known.bin", data: data)

        let hash = try XCTUnwrap(try OpenSubHash.hash(for: url, minimumFileSize: 16, chunkSize: 16))

        let start = data.subdata(in: 0..<16)
        let end = data.subdata(in: (data.count - 16)..<data.count)
        let expectedUInt = checksum64(start) &+ checksum64(end) &+ UInt64(data.count)
        let expected = String(format: "%016qx", expectedUInt)

        XCTAssertEqual(hash, expected)
        XCTAssertEqual(hash.count, 16)
    }

    func testHashIsDeterministicAndChangesWhenFileChanges() throws {
        let data = Data(repeating: 0x11, count: 64)
        let url = try makeTempFile(named: "mutate.bin", data: data)

        let first = try XCTUnwrap(try OpenSubHash.hash(for: url, minimumFileSize: 16, chunkSize: 16))
        let second = try XCTUnwrap(try OpenSubHash.hash(for: url, minimumFileSize: 16, chunkSize: 16))
        XCTAssertEqual(first, second)

        var changed = data
        changed[0] = 0x22
        try changed.write(to: url)

        let third = try XCTUnwrap(try OpenSubHash.hash(for: url, minimumFileSize: 16, chunkSize: 16))
        XCTAssertNotEqual(first, third)
    }
}
