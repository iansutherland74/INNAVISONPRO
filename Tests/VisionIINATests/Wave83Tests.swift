import XCTest
@testable import VisionIINA
final class Wave83Tests: XCTestCase { func testSummary() { XCTAssertEqual(HardwareDecodeCapabilitiesCore.summary(["h264", "av1", "h264"]), "av1,h264") } }
