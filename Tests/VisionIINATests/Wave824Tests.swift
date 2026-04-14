import XCTest
@testable import VisionIINA

final class Wave824Tests: XCTestCase {
    func testPermissionRawValues() {
        XCTAssertEqual(IINAPluginPermission.networkRequest.rawValue,      "network-request")
        XCTAssertEqual(IINAPluginPermission.showOSD.rawValue,             "show-osd")
        XCTAssertEqual(IINAPluginPermission.showAlert.rawValue,           "show-alert")
        XCTAssertEqual(IINAPluginPermission.displayVideoOverlay.rawValue, "video-overlay")
        XCTAssertEqual(IINAPluginPermission.accessFileSystem.rawValue,    "file-system")
        XCTAssertEqual(IINAPluginPermission.allCases.count, 5)
    }
    func testDangerousPermissions() {
        XCTAssertTrue(IINAPluginPermission.networkRequest.isDangerous)
        XCTAssertTrue(IINAPluginPermission.accessFileSystem.isDangerous)
        XCTAssertFalse(IINAPluginPermission.showOSD.isDangerous)
        XCTAssertFalse(IINAPluginPermission.showAlert.isDangerous)
        XCTAssertFalse(IINAPluginPermission.displayVideoOverlay.isDangerous)
    }
    func testRequiredInfoKeys() {
        XCTAssertEqual(IINAPluginInfoKey.name,       "name")
        XCTAssertEqual(IINAPluginInfoKey.identifier, "identifier")
        XCTAssertEqual(IINAPluginInfoKey.version,    "version")
        XCTAssertEqual(IINAPluginInfoKey.entry,      "entry")
        XCTAssertEqual(IINAPluginInfoKey.ghRepo,     "ghRepo")
        XCTAssertEqual(IINAPluginInfoKey.ghVersion,  "ghVersion")
    }
    func testAuthorSubKeys() {
        XCTAssertEqual(IINAPluginInfoKey.Author.name,  "name")
        XCTAssertEqual(IINAPluginInfoKey.Author.url,   "url")
        XCTAssertEqual(IINAPluginInfoKey.Author.email, "email")
    }
}
