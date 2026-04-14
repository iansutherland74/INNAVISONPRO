import XCTest
@testable import VisionIINA

final class Wave838Tests: XCTestCase {
    func testContextIdentifiers() {
        XCTAssertEqual(IINAWebSocketServerDefaults.pongContextID,    "pong")
        XCTAssertEqual(IINAWebSocketServerDefaults.messageContextID, "message")
        XCTAssertNotEqual(IINAWebSocketServerDefaults.pongContextID,
                          IINAWebSocketServerDefaults.messageContextID)
    }
    func testQueueLabelGeneration() {
        let label = IINAWebSocketServerDefaults.makeQueueLabel(serverLabel: "plugin.ws")
        XCTAssertTrue(label.hasPrefix(IINAWebSocketServerDefaults.queueLabelPrefix))
        XCTAssertTrue(label.hasSuffix("plugin.ws"))
    }
    func testServerDefaults() {
        XCTAssertTrue(IINAWebSocketServerDefaults.allowLocalEndpointReuse)
        XCTAssertTrue(IINAWebSocketServerDefaults.includePeerToPeer)
        XCTAssertTrue(IINAWebSocketServerDefaults.autoReplyPing)
    }
    func testLogSubsystem() {
        XCTAssertEqual(IINAWebSocketServerDefaults.logSubsystem, "ws-server")
    }
}
