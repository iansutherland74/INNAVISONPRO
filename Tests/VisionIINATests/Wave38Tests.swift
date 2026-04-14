import XCTest
@testable import VisionIINA

final class InputConfCommentSuffixTests: XCTestCase {
    func testFormatsCommentOrEmpty() {
        XCTAssertEqual(InputConfCommentSuffix.format(nil), "")
        XCTAssertEqual(InputConfCommentSuffix.format(""), "")
        XCTAssertEqual(InputConfCommentSuffix.format("show"), "   #show")
    }
}
