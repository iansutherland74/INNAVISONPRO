import XCTest
@testable import VisionIINA

final class FileHandleTypedReadTests: XCTestCase {

    func testReadValueReadsTypedDataAndReturnsNilAtEOF() throws {
        let dir = FileManager.default.temporaryDirectory.appendingPathComponent("vision-iina-tests/wave22", isDirectory: true)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        let fileURL = dir.appendingPathComponent("typed.bin")

        var first: UInt32 = 0x11223344
        var second: UInt16 = 0x55AA
        var data = Data()
        withUnsafeBytes(of: &first) { data.append(contentsOf: $0) }
        withUnsafeBytes(of: &second) { data.append(contentsOf: $0) }
        try data.write(to: fileURL)

        let handle = try FileHandle(forReadingFrom: fileURL)
        defer { handle.closeFile() }

        XCTAssertEqual(handle.readValue(as: UInt32.self), 0x11223344)
        XCTAssertEqual(handle.readValue(as: UInt16.self), 0x55AA)
        XCTAssertNil(handle.readValue(as: UInt8.self))
    }
}
