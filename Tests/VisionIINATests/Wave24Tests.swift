import XCTest
@testable import VisionIINA

final class ShooterRequestPayloadTests: XCTestCase {

    func testDictionaryPayload() {
        let info = ShooterRequestPayload(hashValue: "abc", path: "/tmp/movie.mkv")
        let dict = info.dictionary

        XCTAssertEqual(dict["filehash"] as? String, "abc")
        XCTAssertEqual(dict["pathinfo"] as? String, "/tmp/movie.mkv")
        XCTAssertEqual(dict["format"] as? String, "json")
    }
}
