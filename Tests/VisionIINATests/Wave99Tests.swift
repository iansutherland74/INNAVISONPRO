import XCTest
@testable import VisionIINA
final class Wave99Tests: XCTestCase { func testRender() { XCTAssertEqual(OSDMessageCore.render(template: "Vol: {{value}}", value: "80"), "Vol: 80") } }
