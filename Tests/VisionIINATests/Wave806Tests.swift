import XCTest
@testable import VisionIINA

final class Wave806Tests: XCTestCase {
  func testRawValues() {
    XCTAssertEqual(IINAFilterName.crop.rawValue, "iina_crop")
    XCTAssertEqual(IINAFilterName.flip.rawValue, "iina_flip")
    XCTAssertEqual(IINAFilterName.mirror.rawValue, "iina_mirror")
    XCTAssertEqual(IINAFilterName.audioEq.rawValue, "iina_aeq")
    XCTAssertEqual(IINAFilterName.delogo.rawValue, "iina_delogo")
  }
  func testAllCases() {
    XCTAssertEqual(IINAFilterName.allCases.count, 5)
  }
  func testRoundTrip() {
    XCTAssertEqual(IINAFilterName(rawValue: "iina_crop"), .crop)
    XCTAssertNil(IINAFilterName(rawValue: "nonexistent"))
  }
}
