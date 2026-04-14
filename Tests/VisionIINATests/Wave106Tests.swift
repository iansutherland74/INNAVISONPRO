import XCTest
@testable import VisionIINA

final class Wave106Tests: XCTestCase {
  func testMediaTypeResolution() {
    XCTAssertEqual(UtilityMediaTypeResolver.mediaType(forExtension: "mp4"), .video)
    XCTAssertEqual(UtilityMediaTypeResolver.mediaType(forExtension: "flac"), .audio)
    XCTAssertEqual(UtilityMediaTypeResolver.mediaType(forExtension: "srt"), .sub)
    XCTAssertNil(UtilityMediaTypeResolver.mediaType(forExtension: "txt"))
  }
}