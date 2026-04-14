import XCTest
@testable import VisionIINA
final class Wave94Tests: XCTestCase { func testPlaylistMove() { XCTAssertEqual(MPVCommandWrappersCore.playlistMove(from: 2, to: 5), ["2", "5"]) } }
