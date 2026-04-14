import XCTest
@testable import VisionIINA

final class Wave811Tests: XCTestCase {
    func testAllRawValues() {
        XCTAssertEqual(IINAPlayerInstanceOptionKey.disableWindowAnimation.rawValue, "disableWindowAnimation")
        XCTAssertEqual(IINAPlayerInstanceOptionKey.disableUI.rawValue, "disableUI")
        XCTAssertEqual(IINAPlayerInstanceOptionKey.label.rawValue, "label")
        XCTAssertEqual(IINAPlayerInstanceOptionKey.enablePlugins.rawValue, "enablePlugins")
        XCTAssertEqual(IINAPlayerInstanceOptionKey.url.rawValue, "url")
    }
    func testIsRecognized() {
        XCTAssertTrue(IINAPlayerInstanceOptionKey.isRecognized("label"))
        XCTAssertTrue(IINAPlayerInstanceOptionKey.isRecognized("enablePlugins"))
        XCTAssertFalse(IINAPlayerInstanceOptionKey.isRecognized("unknown"))
        XCTAssertFalse(IINAPlayerInstanceOptionKey.isRecognized(""))
    }
    func testAllCasesCount() {
        XCTAssertEqual(IINAPlayerInstanceOptionKey.allCases.count, 5)
    }
}
