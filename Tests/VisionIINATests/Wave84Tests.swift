import XCTest
@testable import VisionIINA
final class Wave84Tests: XCTestCase { func testLookup() { XCTAssertEqual(ISO639HelperCore.languageName(for: " EN "), "English") } }
