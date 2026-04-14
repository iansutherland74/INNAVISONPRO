import XCTest
@testable import VisionIINA

final class ContentDispositionFilenameParserTests: XCTestCase {
  func testParseFilename() {
    XCTAssertEqual(ContentDispositionFilenameParser.parseFilename("attachment; filename=\"demo.srt\""), "demo.srt")
  }
}
