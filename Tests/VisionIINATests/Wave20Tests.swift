import XCTest
@testable import VisionIINA

final class DataHashingTests: XCTestCase {

    func testMd5HexKnownValue() {
        let data = Data("abc".utf8)
        XCTAssertEqual(data.md5Hex, "900150983cd24fb0d6963f7d28e17f72")
    }

    func testChecksum64WordsMatchesExpected() {
        let words: [UInt64] = [1, 2, 3, 4]
        var bytes = Data()
        for word in words {
            var little = word.littleEndian
            withUnsafeBytes(of: &little) { bytes.append(contentsOf: $0) }
        }
        XCTAssertEqual(bytes.checksum64Words, 10)
    }

    func testChecksum64WordsIgnoresTailBytes() {
        var bytes = Data(repeating: 0, count: 9)
        bytes[0] = 1
        XCTAssertEqual(bytes.checksum64Words, 1)
    }
}
