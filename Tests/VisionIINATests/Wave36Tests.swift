import XCTest
@testable import VisionIINA

final class FirstRunKeySanitizerTests: XCTestCase {

    func testIsValid() {
        XCTAssertTrue(FirstRunKeySanitizer.isValid("welcome"))
        XCTAssertFalse(FirstRunKeySanitizer.isValid(""))
        XCTAssertFalse(FirstRunKeySanitizer.isValid("a/b"))
    }

    func testSanitized() {
        XCTAssertEqual(FirstRunKeySanitizer.sanitized("  hello/world  "), "hello_world")
        XCTAssertEqual(FirstRunKeySanitizer.sanitized("   "), "marker")
    }
}
