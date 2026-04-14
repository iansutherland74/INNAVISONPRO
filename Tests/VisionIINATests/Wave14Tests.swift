import XCTest
@testable import VisionIINA

final class StreamReaderTests: XCTestCase {

    private func makeTempFile(named name: String, content: String) throws -> String {
        let dir = FileManager.default.temporaryDirectory.appendingPathComponent("vision-iina-tests", isDirectory: true)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        let fileURL = dir.appendingPathComponent(name, isDirectory: false)
        try content.write(to: fileURL, atomically: true, encoding: .utf8)
        return fileURL.path
    }

    func testReadsLineByLineWithTrailingNewline() throws {
        let path = try makeTempFile(named: "streamreader-1.txt", content: "a\nb\nc\n")
        let reader = try XCTUnwrap(StreamReader(path: path))

        XCTAssertEqual(reader.nextLine(), "a")
        XCTAssertEqual(reader.nextLine(), "b")
        XCTAssertEqual(reader.nextLine(), "c")
        XCTAssertNil(reader.nextLine())
    }

    func testReadsLastLineWithoutTrailingNewline() throws {
        let path = try makeTempFile(named: "streamreader-2.txt", content: "one\ntwo\nthree")
        let reader = try XCTUnwrap(StreamReader(path: path))

        XCTAssertEqual(reader.nextLine(), "one")
        XCTAssertEqual(reader.nextLine(), "two")
        XCTAssertEqual(reader.nextLine(), "three")
        XCTAssertNil(reader.nextLine())
    }

    func testCustomDelimiter() throws {
        let path = try makeTempFile(named: "streamreader-3.txt", content: "x||y||z")
        let reader = try XCTUnwrap(StreamReader(path: path, delimiter: "||"))

        XCTAssertEqual(reader.nextLine(), "x")
        XCTAssertEqual(reader.nextLine(), "y")
        XCTAssertEqual(reader.nextLine(), "z")
        XCTAssertNil(reader.nextLine())
    }

    func testRewindRestartsReading() throws {
        let path = try makeTempFile(named: "streamreader-4.txt", content: "l1\nl2\n")
        let reader = try XCTUnwrap(StreamReader(path: path))

        XCTAssertEqual(reader.nextLine(), "l1")
        XCTAssertEqual(reader.nextLine(), "l2")
        XCTAssertNil(reader.nextLine())

        reader.rewind()

        XCTAssertEqual(reader.nextLine(), "l1")
        XCTAssertEqual(reader.nextLine(), "l2")
        XCTAssertNil(reader.nextLine())
    }

    func testSequenceIteration() throws {
        let path = try makeTempFile(named: "streamreader-5.txt", content: "q\nr\n")
        let reader = try XCTUnwrap(StreamReader(path: path))

        XCTAssertEqual(Array(reader), ["q", "r"])
    }
}
