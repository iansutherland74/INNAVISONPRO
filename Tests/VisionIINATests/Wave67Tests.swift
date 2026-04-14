import XCTest
@testable import VisionIINA

final class LoggerSubsystemBuilderTests: XCTestCase {
  func testMake() { XCTAssertEqual(LoggerSubsystemBuilder.make(" abc "), "abc") }
}
