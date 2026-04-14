import XCTest
@testable import VisionIINA

final class Wave833Tests: XCTestCase {
    func testTabTypeRawValues() {
        XCTAssertEqual(IINAPlaylistTabType.playlist.rawValue, 0)
        XCTAssertEqual(IINAPlaylistTabType.chapters.rawValue, 1)
        XCTAssertEqual(IINAPlaylistTabType.allCases.count, 2)
    }
    func testTabTypeInitFromName() {
        XCTAssertEqual(IINAPlaylistTabType(name: "playlist"), .playlist)
        XCTAssertEqual(IINAPlaylistTabType(name: "chapters"), .chapters)
        XCTAssertNil(IINAPlaylistTabType(name: "unknown"))
    }
    func testTabTypeName() {
        XCTAssertEqual(IINAPlaylistTabType.playlist.name, "playlist")
        XCTAssertEqual(IINAPlaylistTabType.chapters.name, "chapters")
    }
    func testMenuItemTags() {
        XCTAssertEqual(IINAPlaylistMenuItemTag.cut,    601)
        XCTAssertEqual(IINAPlaylistMenuItemTag.copy,   602)
        XCTAssertEqual(IINAPlaylistMenuItemTag.paste,  603)
        XCTAssertEqual(IINAPlaylistMenuItemTag.delete, 604)
        // tags should be sequential
        XCTAssertEqual(IINAPlaylistMenuItemTag.copy,  IINAPlaylistMenuItemTag.cut + 1)
        XCTAssertEqual(IINAPlaylistMenuItemTag.paste, IINAPlaylistMenuItemTag.copy + 1)
    }
}
