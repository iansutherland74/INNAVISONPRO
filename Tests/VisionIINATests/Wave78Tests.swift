import XCTest
@testable import VisionIINA
final class Wave78Tests: XCTestCase { func testSummary() { XCTAssertEqual(DisplaySnapshotCore(id: "1", attributes: ["main"]).summary, "1:main") } }
