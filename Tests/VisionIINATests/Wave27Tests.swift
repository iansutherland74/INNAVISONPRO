import XCTest
@testable import VisionIINA

final class SubtitleHashFormattingTests: XCTestCase {

    func testOpenSubHexPadsTo16Lowercase() {
        XCTAssertEqual(SubtitleHashFormatting.openSubHex(0x1A2B), "0000000000001a2b")
    }

    func testShooterCombinedUsesSemicolon() {
        XCTAssertEqual(SubtitleHashFormatting.shooterCombined(["aa", "bb", "cc"]), "aa;bb;cc")
    }
}
