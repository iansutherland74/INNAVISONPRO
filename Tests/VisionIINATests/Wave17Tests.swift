import XCTest
@testable import VisionIINA

final class DisplayRefreshRateFormatterTests: XCTestCase {

    func testFormatsIntegerRate() {
        XCTAssertEqual(DisplayRefreshRateFormatter.string(for: 60.0), "60 Hz")
    }

    func testFormatsToThreeFractionDigitsMax() {
        XCTAssertEqual(DisplayRefreshRateFormatter.string(for: 23.976543), "23.976 Hz")
    }

    func testRoundsDownNotUp() {
        XCTAssertEqual(DisplayRefreshRateFormatter.string(for: 59.9999), "59.999 Hz")
    }

    func testPreservesShortFractions() {
        XCTAssertEqual(DisplayRefreshRateFormatter.string(for: 120.5), "120.5 Hz")
    }
}
