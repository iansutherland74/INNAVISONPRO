import XCTest
@testable import VisionIINA

final class Wave122Tests: XCTestCase {
  func testNormalizedURLExtension() {
    let url = URL(fileURLWithPath: "/tmp/Movie.MKV")
    XCTAssertEqual(UtilityURLNormalizedExtension.lowercasedExtension(of: url), "mkv")
  }
}