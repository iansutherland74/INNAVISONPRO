import XCTest
@testable import VisionIINA

final class MPVNodeFormatNameTests: XCTestCase {
  func testName() { XCTAssertEqual(MPVNodeFormatName.name(for: 9), "byte_array") }
}
