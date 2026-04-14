import XCTest
@testable import VisionIINA
final class Wave95Tests: XCTestCase { func testDescribe() { XCTAssertEqual(MPVNodeCore.describe(formatRawValue: 1), "string") } }
