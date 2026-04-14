import XCTest
@testable import VisionIINA

final class Wave832Tests: XCTestCase {
    func testOriginRawValues() {
        XCTAssertEqual(IINAOnlineSubtitleOrigin.legacy.rawValue, "legacy")
        XCTAssertEqual(IINAOnlineSubtitleOrigin.plugin.rawValue, "plugin")
        XCTAssertEqual(IINAOnlineSubtitleOrigin.allCases.count, 2)
    }
    func testBuiltinProviderIDs() {
        XCTAssertEqual(IINABuiltinSubProviderID.openSub, ":opensubtitles")
        XCTAssertEqual(IINABuiltinSubProviderID.shooter,  ":shooter")
        XCTAssertEqual(IINABuiltinSubProviderID.assrt,    ":assrt")
        XCTAssertEqual(IINABuiltinSubProviderID.all.count, 3)
    }
    func testBuiltinIDsStartWithColon() {
        for id in IINABuiltinSubProviderID.all {
            XCTAssertTrue(id.hasPrefix(":"), "\(id) should start with ':'")
        }
    }
    func testIsBuiltin() {
        XCTAssertTrue(IINABuiltinSubProviderID.isBuiltin(":opensubtitles"))
        XCTAssertFalse(IINABuiltinSubProviderID.isBuiltin("plugin:com.test:en"))
        XCTAssertFalse(IINABuiltinSubProviderID.isBuiltin(""))
    }
}
