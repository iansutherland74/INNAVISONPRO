import XCTest
@testable import VisionIINA

final class PlaylistMoveArgsBuilderTests: XCTestCase {
  func testMake() { XCTAssertEqual(PlaylistMoveArgsBuilder.make(from: 1, to: 2), ["1", "2"]) }
}
