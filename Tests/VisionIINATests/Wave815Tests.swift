import XCTest
@testable import VisionIINA

final class Wave815Tests: XCTestCase {
    func testRawValues() {
        XCTAssertEqual(IINAPlaylistItemKey.filename.rawValue,  "filename")
        XCTAssertEqual(IINAPlaylistItemKey.title.rawValue,     "title")
        XCTAssertEqual(IINAPlaylistItemKey.isPlaying.rawValue, "isPlaying")
        XCTAssertEqual(IINAPlaylistItemKey.isCurrent.rawValue, "isCurrent")
        XCTAssertEqual(IINAPlaylistItemKey.allCases.count, 4)
    }
    func testMakeItem() {
        let item = IINAPlaylistItemKey.makeItem(filename: "movie.mkv", title: "Movie", isPlaying: true, isCurrent: false)
        XCTAssertEqual(item["filename"] as? String, "movie.mkv")
        XCTAssertEqual(item["title"] as? String,    "Movie")
        XCTAssertEqual(item["isPlaying"] as? Bool,  true)
        XCTAssertEqual(item["isCurrent"] as? Bool,  false)
    }
    func testMakeItemNilTitle() {
        let item = IINAPlaylistItemKey.makeItem(filename: "a.mp4", title: nil, isPlaying: false, isCurrent: true)
        XCTAssertNil(item["title"] as? String)
        XCTAssertEqual(item["isCurrent"] as? Bool, true)
    }
}
