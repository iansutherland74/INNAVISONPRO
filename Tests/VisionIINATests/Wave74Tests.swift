import XCTest
@testable import VisionIINA

final class PlaybackLoopTransitionTests: XCTestCase {
  func testNext() {
    XCTAssertEqual(PlaybackLoopTransition.next(.cleared), .aSet)
    XCTAssertEqual(PlaybackLoopTransition.next(.aSet), .bSet)
    XCTAssertEqual(PlaybackLoopTransition.next(.bSet), .cleared)
  }
}
