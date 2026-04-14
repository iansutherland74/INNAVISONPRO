import XCTest
@testable import VisionIINA

final class EventNameNormalizerTests: XCTestCase {
  func testNormalize() { XCTAssertEqual(EventNameNormalizer.normalize("  Player.Start  "), "player.start") }
}
