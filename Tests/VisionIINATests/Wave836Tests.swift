import XCTest
@testable import VisionIINA

final class Wave836Tests: XCTestCase {
    func testDefaultDimensions() {
        XCTAssertEqual(IINAStandaloneWindowDefaults.width,  600)
        XCTAssertEqual(IINAStandaloneWindowDefaults.height, 400)
        XCTAssertGreaterThan(IINAStandaloneWindowDefaults.width,
                             IINAStandaloneWindowDefaults.height)
    }
    func testMakeTitle() {
        let title = IINAStandaloneWindowDefaults.makeTitle(pluginName: "MyPlugin")
        XCTAssertTrue(title.contains("MyPlugin"))
        XCTAssertTrue(title.contains(IINAStandaloneWindowDefaults.titleSeparator))
    }
    func testMessageHandlerName() {
        XCTAssertEqual(IINAStandaloneWindowDefaults.messageHandlerName, "iina")
    }
}
