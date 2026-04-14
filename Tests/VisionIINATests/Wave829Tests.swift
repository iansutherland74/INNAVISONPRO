import XCTest
@testable import VisionIINA

final class Wave829Tests: XCTestCase {
    func testFunctionNames() {
        XCTAssertEqual(IINAPolyfillFunctionName.setInterval,   "setInterval")
        XCTAssertEqual(IINAPolyfillFunctionName.setTimeout,    "setTimeout")
        XCTAssertEqual(IINAPolyfillFunctionName.clearInterval, "clearInterval")
        XCTAssertEqual(IINAPolyfillFunctionName.clearTimeout,  "clearTimeout")
        XCTAssertEqual(IINAPolyfillFunctionName.requireNative, "__require__")
        XCTAssertEqual(IINAPolyfillFunctionName.require,       "require")
    }
    func testAllContainsSix() {
        XCTAssertEqual(IINAPolyfillFunctionName.all.count, 6)
    }
    func testNativeRequireIsInternal() {
        XCTAssertTrue(IINAPolyfillFunctionName.requireNative.hasPrefix("__"))
        XCTAssertTrue(IINAPolyfillFunctionName.requireNative.hasSuffix("__"))
    }
    func testTimerPairs() {
        // set/clear come in matching pairs
        let setFuncs   = ["setInterval", "setTimeout"]
        let clearFuncs = ["clearInterval", "clearTimeout"]
        for (s, c) in zip(setFuncs, clearFuncs) {
            let suffix = String(s.dropFirst(3)) // "Interval" or "Timeout"
            XCTAssertTrue(c.hasSuffix(suffix))
        }
    }
}
