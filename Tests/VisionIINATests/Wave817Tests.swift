import XCTest
@testable import VisionIINA

final class Wave817Tests: XCTestCase {
    func testWindowLoadedName() {
        XCTAssertEqual(IINASidebarWindowEvent.windowLoaded.rawValue, "iina.window-loaded")
        XCTAssertEqual(IINASidebarWindowEvent.allCases.count, 1)
    }
    func testErrorMessagesContainEventName() {
        let event = IINASidebarWindowEvent.windowLoaded.rawValue
        XCTAssertTrue(IINASidebarAPIError.loadFileRequiresWindow.contains(event))
        XCTAssertTrue(IINASidebarAPIError.showRequiresWindow.contains(event))
        XCTAssertTrue(IINASidebarAPIError.hideRequiresWindow.contains(event))
    }
    func testErrorMessagePrefixes() {
        XCTAssertTrue(IINASidebarAPIError.loadFileRequiresWindow.hasPrefix("sidebar.loadFile"))
        XCTAssertTrue(IINASidebarAPIError.showRequiresWindow.hasPrefix("sidebar.show"))
        XCTAssertTrue(IINASidebarAPIError.hideRequiresWindow.hasPrefix("sidebar.hide"))
    }
}
