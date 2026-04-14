import XCTest
@testable import VisionIINA

final class OrderedUniqueTests: XCTestCase {
    func testOrderedUniqueStrings() {
        XCTAssertEqual(OrderedUnique.strings(["en", "ja", "en", "fr", "ja"]), ["en", "ja", "fr"])
    }
}
