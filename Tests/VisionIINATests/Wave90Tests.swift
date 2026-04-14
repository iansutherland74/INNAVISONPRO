import XCTest
@testable import VisionIINA
final class Wave90Tests: XCTestCase { func testCanonical() { XCTAssertEqual(KeyCodeHelperCore.canonical(" Shift+F "), "shift+f") } }
