import XCTest
@testable import VisionIINA

final class Wave123Tests: XCTestCase {
  func testURLMediaTypeResolver() {
    let url = URL(fileURLWithPath: "/tmp/song.flac")
    XCTAssertEqual(UtilityURLMediaTypeResolver.mediaType(for: url), .audio)
  }
}