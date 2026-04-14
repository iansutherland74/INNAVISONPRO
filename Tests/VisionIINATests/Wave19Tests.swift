import CryptoKit
import XCTest
@testable import VisionIINA

final class ShooterHashTests: XCTestCase {

    private func makeTempFile(named name: String, data: Data) throws -> URL {
        let dir = FileManager.default.temporaryDirectory
            .appendingPathComponent("vision-iina-tests", isDirectory: true)
            .appendingPathComponent("wave19", isDirectory: true)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        let fileURL = dir.appendingPathComponent(name, isDirectory: false)
        try data.write(to: fileURL)
        return fileURL
    }

    private func md5Hex(_ data: Data) -> String {
        Insecure.MD5.hash(data: data).map { String(format: "%02x", $0) }.joined()
    }

    func testThrowsForTooSmallFile() throws {
        let url = try makeTempFile(named: "small.bin", data: Data(repeating: 0xAB, count: 8))

        do {
            _ = try ShooterHash.hash(for: url, minimumFileSize: 9, chunkSize: 8)
            XCTFail("Expected fileTooSmall error")
        } catch let error as ShooterHashError {
            XCTAssertEqual(error, .fileTooSmall(8192))
        }
    }

    func testHashMatchesExpectedForKnownData() throws {
        let data = Data((0..<16384).map { UInt8($0 % 256) })
        let url = try makeTempFile(named: "known.bin", data: data)

        let hash = try ShooterHash.hash(for: url, minimumFileSize: 32, chunkSize: 16)

        let fileSize = UInt64(data.count)
        let offsets: [UInt64] = [4096, fileSize / 3 * 2, fileSize / 3, fileSize - 8192]
        let expected = offsets.map { offset in
            let start = Int(offset)
            let end = start + 16
            return md5Hex(data.subdata(in: start..<end))
        }.joined(separator: ";")

        XCTAssertEqual(hash, expected)
        XCTAssertEqual(hash.components(separatedBy: ";").count, 4)
    }

    func testHashIsDeterministicAndChangesWhenFileChanges() throws {
        let data = Data(repeating: 0x11, count: 16384)
        let url = try makeTempFile(named: "mutate.bin", data: data)

        let first = try ShooterHash.hash(for: url)
        let second = try ShooterHash.hash(for: url)
        XCTAssertEqual(first, second)

        var changed = data
        changed[5000] = 0x22
        try changed.write(to: url)

        let third = try ShooterHash.hash(for: url)
        XCTAssertNotEqual(first, third)
    }
}
