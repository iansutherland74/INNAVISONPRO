import XCTest
@testable import VisionIINA
final class Wave87Tests: XCTestCase { func testConfLine() { XCTAssertEqual(KeyBindingItemCore(key: "SPACE", action: "cycle pause").confLine, "SPACE cycle pause") } }
