import XCTest
@testable import VisionIINA

final class Wave803Tests: XCTestCase {
  func testDetect() {
    XCTAssertEqual(IINAPluginPathPrefix.detect(in: "@tmp/foo.txt"), .tmp)
    XCTAssertEqual(IINAPluginPathPrefix.detect(in: "@data/bar.json"), .data)
    XCTAssertEqual(IINAPluginPathPrefix.detect(in: "@video/1"), .video)
    XCTAssertEqual(IINAPluginPathPrefix.detect(in: "@audio/2"), .audio)
    XCTAssertEqual(IINAPluginPathPrefix.detect(in: "@sub"), .sub)
    XCTAssertEqual(IINAPluginPathPrefix.detect(in: "@current/file.mkv"), .current)
    XCTAssertNil(IINAPluginPathPrefix.detect(in: "/absolute/path"))
  }
  func testRawValues() {
    XCTAssertEqual(IINAPluginPathPrefix.tmp.rawValue, "@tmp/")
    XCTAssertEqual(IINAPluginPathPrefix.data.rawValue, "@data/")
  }
  func testAllCasesCount() {
    XCTAssertEqual(IINAPluginPathPrefix.allCases.count, 6)
  }
}
