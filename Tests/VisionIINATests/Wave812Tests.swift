import XCTest
@testable import VisionIINA

final class Wave812Tests: XCTestCase {
    func testHTTPMethodNames() {
        XCTAssertEqual(IINAHTTPMethodName.get.rawValue,    "GET")
        XCTAssertEqual(IINAHTTPMethodName.post.rawValue,   "POST")
        XCTAssertEqual(IINAHTTPMethodName.put.rawValue,    "PUT")
        XCTAssertEqual(IINAHTTPMethodName.patch.rawValue,  "PATCH")
        XCTAssertEqual(IINAHTTPMethodName.delete.rawValue, "DELETE")
        XCTAssertEqual(IINAHTTPMethodName.allCases.count, 5)
    }
    func testResponseKeys() {
        XCTAssertEqual(IINAHTTPResponseKey.statusCode.rawValue, "statusCode")
        XCTAssertEqual(IINAHTTPResponseKey.reason.rawValue,     "reason")
        XCTAssertEqual(IINAHTTPResponseKey.data.rawValue,       "data")
        XCTAssertEqual(IINAHTTPResponseKey.text.rawValue,       "text")
        XCTAssertEqual(IINAHTTPResponseKey.allCases.count, 4)
    }
    func testRequestOptionKeys() {
        XCTAssertEqual(IINAHTTPRequestOptionKey.method.rawValue,  "method")
        XCTAssertEqual(IINAHTTPRequestOptionKey.params.rawValue,  "params")
        XCTAssertEqual(IINAHTTPRequestOptionKey.headers.rawValue, "headers")
        XCTAssertEqual(IINAHTTPRequestOptionKey.data.rawValue,    "data")
        XCTAssertEqual(IINAHTTPRequestOptionKey.allCases.count, 4)
    }
}
