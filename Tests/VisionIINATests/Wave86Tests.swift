import XCTest
@testable import VisionIINA
final class Wave86Tests: XCTestCase { func testLines() { XCTAssertEqual(KeyBindingDataLoaderCore.nonEmptyLines("a\n\n b "), ["a", "b"]) } }
