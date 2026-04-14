import XCTest
@testable import VisionIINA
final class Wave91Tests: XCTestCase { func testDescribe() { XCTAssertEqual(KeyMappingCore.describe(key: "A", action: "seek +5"), "KeyMapping(\"A\"->\"seek +5\" iina=false)") } }
