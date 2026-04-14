import XCTest
@testable import VisionIINA

final class InputConfActionTokensTests: XCTestCase {
    func testTokenizeSplitsWhitespace() {
        XCTAssertEqual(InputConfActionTokens.tokenize("af   toggle\tfoo"), ["af", "toggle", "foo"])
    }
}
