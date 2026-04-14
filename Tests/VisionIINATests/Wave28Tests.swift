import XCTest
@testable import VisionIINA

final class SubtitleFileSizePolicyTests: XCTestCase {

    func testOpenSubEligibilityUsesStrictGreaterThan() {
        XCTAssertFalse(SubtitleFileSizePolicy.isOpenSubEligible(fileSize: 131072))
        XCTAssertTrue(SubtitleFileSizePolicy.isOpenSubEligible(fileSize: 131073))
    }

    func testShooterMinimumIsNormalizedToSafetyThreshold() {
        XCTAssertEqual(SubtitleFileSizePolicy.normalizedShooterMinimum(1), 8192)
        XCTAssertEqual(SubtitleFileSizePolicy.normalizedShooterMinimum(9000), 9000)
    }

    func testShooterEligibilityUsesNormalizedMinimum() {
        XCTAssertTrue(SubtitleFileSizePolicy.isShooterEligible(fileSize: 8192, minimumFileSize: 1))
        XCTAssertFalse(SubtitleFileSizePolicy.isShooterEligible(fileSize: 8191, minimumFileSize: 1))
    }
}
