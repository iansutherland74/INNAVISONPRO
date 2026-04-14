import XCTest
@testable import VisionIINA

final class ChunkOffsetSafetyTests: XCTestCase {
    func testHasSafeEndOffset() {
        XCTAssertTrue(ChunkOffsetSafety.hasSafeEndOffset(fileSize: 100, requiredTailBytes: 80))
        XCTAssertFalse(ChunkOffsetSafety.hasSafeEndOffset(fileSize: 79, requiredTailBytes: 80))
    }

    func testClampedChunkSize() {
        XCTAssertEqual(ChunkOffsetSafety.clampedChunkSize(0, maxFileSize: 10), 1)
        XCTAssertEqual(ChunkOffsetSafety.clampedChunkSize(20, maxFileSize: 10), 10)
    }
}
