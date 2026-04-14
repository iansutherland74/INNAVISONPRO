import XCTest
@testable import VisionIINA
final class Wave80Tests: XCTestCase { func testClamp() { XCTAssertEqual(EqualizationsCore.clamp(100), 20) } }
