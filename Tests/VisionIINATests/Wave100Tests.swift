import XCTest
@testable import VisionIINA
final class Wave100Tests: XCTestCase { func testLoopState() { XCTAssertEqual(PlaybackInfoCore.nextLoopState("cleared"), "aSet") } }
