import XCTest
@testable import VisionIINA
final class Wave77Tests: XCTestCase { func testScore() { XCTAssertEqual(AutoFileMatcherCore.score(filename: "MyMovie.mkv", query: "movie"), 5) } }
