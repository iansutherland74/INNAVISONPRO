import XCTest
@testable import VisionIINA

final class SubtitleHashOffsetsTests: XCTestCase {

    func testOpenSubOffsets() {
        XCTAssertEqual(SubtitleHashOffsets.openSubOffsets(fileSize: 1000, chunkSize: 100), [0, 900])
    }

    func testShooterOffsets() {
        let offsets = SubtitleHashOffsets.shooterOffsets(fileSize: 12000)
        XCTAssertEqual(offsets, [4096, 8000, 4000, 3808])
    }
}
