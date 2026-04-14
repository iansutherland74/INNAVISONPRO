import XCTest
@testable import VisionIINA

final class Wave837Tests: XCTestCase {
    func testCornerRadius() {
        XCTAssertEqual(IINASidebarTabStyle.cornerRadius, 10)
    }
    func testAlphaValues() {
        XCTAssertGreaterThan(IINASidebarTabStyle.activeAlpha,
                             IINASidebarTabStyle.inactiveAlpha)
        XCTAssertEqual(IINASidebarTabStyle.activeAlpha,   0.2)
        XCTAssertEqual(IINASidebarTabStyle.inactiveAlpha, 0.1)
    }
    func testTabStripDimensions() {
        XCTAssertEqual(IINASidebarTabStyle.tabStripHeight,  36)
        XCTAssertEqual(IINASidebarTabStyle.tabStripPadding,  8)
        XCTAssertGreaterThan(IINASidebarTabStyle.tabStripHeight,
                             IINASidebarTabStyle.tabStripPadding)
    }
}
