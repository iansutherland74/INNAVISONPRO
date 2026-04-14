import XCTest
@testable import VisionIINA

final class Wave827Tests: XCTestCase {
    func testRawValues() {
        XCTAssertEqual(IINASubtitleDescriptionKey.name.rawValue,  "name")
        XCTAssertEqual(IINASubtitleDescriptionKey.left.rawValue,  "left")
        XCTAssertEqual(IINASubtitleDescriptionKey.right.rawValue, "right")
        XCTAssertEqual(IINASubtitleDescriptionKey.allCases.count, 3)
    }
    func testExtractFull() {
        let d: [String: String] = ["name": "SubDB", "left": "English", "right": "SRT"]
        let (n, l, r) = IINASubtitleDescriptionKey.extract(from: d)
        XCTAssertEqual(n, "SubDB")
        XCTAssertEqual(l, "English")
        XCTAssertEqual(r, "SRT")
    }
    func testExtractMissing() {
        let (n, l, r) = IINASubtitleDescriptionKey.extract(from: [:])
        XCTAssertEqual(n, "")
        XCTAssertEqual(l, "")
        XCTAssertEqual(r, "")
    }
}
