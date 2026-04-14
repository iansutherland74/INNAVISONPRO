import XCTest
@testable import VisionIINA
final class Wave102Tests: XCTestCase { func testPreventSleep() { XCTAssertTrue(SleepPreventerCore.shouldPreventSleep(idleDisabled: false, playbackActive: true)) } }
