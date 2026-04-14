import XCTest
@testable import VisionIINA
final class Wave82Tests: XCTestCase { func testFirstRunDelegation() { let d = FileManager.default.temporaryDirectory.appendingPathComponent("wave82", isDirectory: true); let s = FirstRunMarkerStore(baseURL: d); s.unsetFirstRun(for: .init("k")); XCTAssertTrue(FirstRunManagerCore.isFirstRun(store: s, key: "k")); XCTAssertFalse(FirstRunManagerCore.isFirstRun(store: s, key: "k")) } }
