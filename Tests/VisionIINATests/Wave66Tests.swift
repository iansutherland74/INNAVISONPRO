import XCTest
@testable import VisionIINA

final class LegacyPreferenceMigrationPlanTests: XCTestCase {
  func testUnmigrated() {
    let persisted: Set<String> = ["legacy"]
    XCTAssertTrue(LegacyPreferenceMigrationPlan.unmigrated(modernKey: "modern", legacyKey: "legacy", persisted: persisted))
  }
}
