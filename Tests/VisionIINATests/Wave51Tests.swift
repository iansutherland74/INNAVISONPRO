import XCTest
@testable import VisionIINA

final class AutoFileMatcherSeriesKeyTests: XCTestCase {
  func testMake() { XCTAssertEqual(AutoFileMatcherSeriesKey.make(prefix: "a", suffix: "b"), "a|b") }
}
