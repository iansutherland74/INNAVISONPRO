import XCTest
@testable import VisionIINA
final class Wave81Tests: XCTestCase { func testEventID() { XCTAssertEqual(EventControllerCore.eventID(category: "Player", name: "Start"), "player.start") } }
