import XCTest
@testable import VisionIINA
final class Wave92Tests: XCTestCase { func testUnmigrated() { XCTAssertTrue(LegacyMigrationCore.isUnmigrated(modernKey: "new", legacyKey: "old", persisted: ["old"])) } }
