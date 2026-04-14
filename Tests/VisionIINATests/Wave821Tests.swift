import XCTest
@testable import VisionIINA

final class Wave821Tests: XCTestCase {
    func testListenerStateRawValues() {
        XCTAssertEqual(IINAWebSocketListenerState.setup.rawValue,     "setup")
        XCTAssertEqual(IINAWebSocketListenerState.waiting.rawValue,   "waiting")
        XCTAssertEqual(IINAWebSocketListenerState.ready.rawValue,     "ready")
        XCTAssertEqual(IINAWebSocketListenerState.failed.rawValue,    "failed")
        XCTAssertEqual(IINAWebSocketListenerState.cancelled.rawValue, "cancelled")
        XCTAssertEqual(IINAWebSocketListenerState.allCases.count, 5)
    }
    func testSendResultRawValues() {
        XCTAssertEqual(IINAWebSocketSendResult.success.rawValue,      "success")
        XCTAssertEqual(IINAWebSocketSendResult.noConnection.rawValue, "no_connection")
        XCTAssertEqual(IINAWebSocketSendResult.allCases.count, 2)
    }
    func testErrorKeys() {
        XCTAssertEqual(IINAWebSocketErrorKey.description, "description")
        XCTAssertEqual(IINAWebSocketErrorKey.message,     "message")
    }
}
