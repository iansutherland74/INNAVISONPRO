import XCTest
@testable import VisionIINA

final class OpenSubAPIEndpointTests: XCTestCase {
  func testEndpoints() { XCTAssertTrue(OpenSubAPIEndpoint.login.contains("/login")) }
}
