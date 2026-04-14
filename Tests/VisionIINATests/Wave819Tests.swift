import XCTest
@testable import VisionIINA

final class Wave819Tests: XCTestCase {
    func testProviderMethodRawValues() {
        XCTAssertEqual(IINASubtitleProviderMethod.search.rawValue,      "search")
        XCTAssertEqual(IINASubtitleProviderMethod.download.rawValue,    "download")
        XCTAssertEqual(IINASubtitleProviderMethod.description.rawValue, "description")
        XCTAssertEqual(IINASubtitleProviderMethod.allCases.count, 3)
    }
    func testConstants() {
        XCTAssertEqual(IINASubtitleConstants.customImplementation, "custom-implementation")
        XCTAssertEqual(IINASubtitleConstants.itemDescField,        "desc")
        XCTAssertEqual(IINASubtitleConstants.registryKey,          "__providers")
        XCTAssertEqual(IINASubtitleConstants.invokeSearchKey,      "__invokeSearch")
    }
    func testCustomImplIsKebabCase() {
        XCTAssertTrue(IINASubtitleConstants.customImplementation.contains("-"))
    }
}
