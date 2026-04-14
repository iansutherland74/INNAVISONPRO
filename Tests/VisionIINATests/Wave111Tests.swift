import XCTest
@testable import VisionIINA

final class Wave111Tests: XCTestCase {
  func testLatestCreatedSelection() {
    let a = URL(fileURLWithPath: "/tmp/a")
    let b = URL(fileURLWithPath: "/tmp/b")
    let dateA = Date(timeIntervalSince1970: 10)
    let dateB = Date(timeIntervalSince1970: 20)
    let result = UtilityLatestCreatedURL.latest(in: [a, b]) { url in
      url == a ? dateA : dateB
    }
    XCTAssertEqual(result, b)
  }
}