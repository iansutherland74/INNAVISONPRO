import XCTest
@testable import VisionIINA
final class Wave101Tests: XCTestCase { func testPayload() { XCTAssertEqual(ShooterSubtitleCore.payload(path: "/tmp/a.mkv", fileHash: "h")["pathinfo"] as? String, "/tmp/a.mkv") } }
