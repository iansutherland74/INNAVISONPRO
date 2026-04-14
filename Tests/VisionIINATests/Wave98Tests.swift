import XCTest
@testable import VisionIINA
final class Wave98Tests: XCTestCase { func testQuota() { XCTAssertEqual(OpenSubSubtitleCore.quotaMessage(remaining: 4, requests: 2), "Download #2, remaining quota 4") } }
