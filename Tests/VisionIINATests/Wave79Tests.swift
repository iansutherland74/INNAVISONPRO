import XCTest
@testable import VisionIINA
final class Wave79Tests: XCTestCase { func testActive() { XCTAssertEqual(DisplayControllerCore.activeDisplay(main: nil, fallback: .init(id: "f", attributes: []))?.id, "f") } }
