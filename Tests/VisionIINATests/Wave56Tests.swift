import XCTest
@testable import VisionIINA

final class FirstRunFilenameBuilderTests: XCTestCase {
  func testMake() { XCTAssertEqual(FirstRunFilenameBuilder.make(from: "hello/world"), ".hello_world") }
}
