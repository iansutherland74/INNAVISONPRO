import XCTest
@testable import VisionIINA

final class Wave825Tests: XCTestCase {
    func testSharedNamespaces() {
        let shared: [IINAPluginAPINamespace] = [.menu, .standaloneWindow, .utils,
            .file, .preferences, .console, .http, .ws, .global]
        for ns in shared {
            XCTAssertFalse(ns.rawValue.isEmpty, "namespace \(ns) has empty rawValue")
        }
    }
    func testPlayerOnlyNamespaces() {
        let playerOnly: [IINAPluginAPINamespace] = [.core, .mpv, .event, .overlay,
            .sidebar, .playlist, .subtitle, .input]
        for ns in playerOnly {
            XCTAssertFalse(ns.rawValue.isEmpty)
        }
    }
    func testRawValues() {
        XCTAssertEqual(IINAPluginAPINamespace.menu.rawValue,     "menu")
        XCTAssertEqual(IINAPluginAPINamespace.mpv.rawValue,      "mpv")
        XCTAssertEqual(IINAPluginAPINamespace.overlay.rawValue,  "overlay")
        XCTAssertEqual(IINAPluginAPINamespace.subtitle.rawValue, "subtitle")
        XCTAssertEqual(IINAPluginAPINamespace.ws.rawValue,       "ws")
    }
    func testTotalNamespaceCount() {
        XCTAssertEqual(IINAPluginAPINamespace.allCases.count, 17)
    }
}
