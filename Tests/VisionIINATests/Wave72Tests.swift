import XCTest
@testable import VisionIINA

final class OpenSubQuotaMessageTests: XCTestCase {
  func testMake() { XCTAssertTrue(OpenSubQuotaMessage.make(remaining: 3, requests: 10).contains("remaining quota 3")) }
}
