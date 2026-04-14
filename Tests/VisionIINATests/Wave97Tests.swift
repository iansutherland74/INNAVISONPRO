import XCTest
@testable import VisionIINA
final class Wave97Tests: XCTestCase { func testEndpoint() { XCTAssertEqual(OpenSubClientCore.endpoint(path: "/login"), "https://api.opensubtitles.com/api/v1/login") } }
