import XCTest
@testable import VisionIINA

final class InputConfSectionParserTests: XCTestCase {

    func testSectionFromTokens() {
        let tokens = ["{playlist}", "cycle", "pause"]
        XCTAssertEqual(InputConfSectionParser.section(fromActionTokens: tokens), "playlist")
    }

    func testSectionFromRawAction() {
        XCTAssertEqual(InputConfSectionParser.section(fromRawAction: "{my_section} af toggle"), "my_section")
    }

    func testSectionMissingOrMalformedReturnsNil() {
        XCTAssertNil(InputConfSectionParser.section(fromRawAction: "af toggle"))
        XCTAssertNil(InputConfSectionParser.section(fromRawAction: "{unfinished af"))
    }
}
