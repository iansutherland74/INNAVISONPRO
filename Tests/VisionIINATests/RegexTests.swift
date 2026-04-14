import XCTest
@testable import VisionIINA

final class RegexTests: XCTestCase {
    func testNumericRegexMatchesDecimal() {
        XCTAssertTrue(Regex.numbers.matches("123.45"))
        XCTAssertFalse(Regex.numbers.matches("123a"))
    }

    func testHttpFilenameCapture() {
        let captures = Regex.httpFileName.captures(in: "attachment; filename=movie.mkv")
        XCTAssertEqual(captures.count, 2)
        XCTAssertEqual(captures[1], "movie.mkv")
    }
}
