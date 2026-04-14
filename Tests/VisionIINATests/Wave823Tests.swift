import XCTest
@testable import VisionIINA

final class Wave823Tests: XCTestCase {
    func testBridgeKeys() {
        XCTAssertEqual(IINAMessageBridgeKey.iinaGlobal,           "iina")
        XCTAssertEqual(IINAMessageBridgeKey.listeners,            "listeners")
        XCTAssertEqual(IINAMessageBridgeKey.emitFn,               "_emit")
        XCTAssertEqual(IINAMessageBridgeKey.simpleModeSetStyle,   "_simpleModeSetStyle")
        XCTAssertEqual(IINAMessageBridgeKey.simpleModeSetContent, "_simpleModeSetContent")
        XCTAssertEqual(IINAMessageBridgeKey.onMessageFn,          "onMessage")
        XCTAssertEqual(IINAMessageBridgeKey.postMessageFn,        "postMessage")
    }
    func testEnvelopeIndices() {
        XCTAssertEqual(IINAMessageBridgeKey.envelopeNameIndex, 0)
        XCTAssertEqual(IINAMessageBridgeKey.envelopeDataIndex, 1)
        XCTAssertEqual(IINAMessageBridgeKey.envelopeCount,     2)
        XCTAssertNotEqual(IINAMessageBridgeKey.envelopeNameIndex,
                          IINAMessageBridgeKey.envelopeDataIndex)
    }
    func testInternalKeysStartWithUnderscore() {
        XCTAssertTrue(IINAMessageBridgeKey.emitFn.hasPrefix("_"))
        XCTAssertTrue(IINAMessageBridgeKey.simpleModeSetStyle.hasPrefix("_"))
        XCTAssertTrue(IINAMessageBridgeKey.simpleModeSetContent.hasPrefix("_"))
    }
}
