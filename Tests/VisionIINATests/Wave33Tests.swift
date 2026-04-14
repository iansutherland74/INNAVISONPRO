import XCTest
@testable import VisionIINA

final class URLFileAccessTests: XCTestCase {

    func testLocalFileDetection() {
        let fileURL = URL(fileURLWithPath: "/tmp/demo.txt")
        let webURL = URL(string: "https://example.com")!

        XCTAssertTrue(URLFileAccess.isLocalFile(fileURL))
        XCTAssertFalse(URLFileAccess.isLocalFile(webURL))
    }

    func testFilePathIfLocal() {
        let fileURL = URL(fileURLWithPath: "/tmp/demo.txt")
        let webURL = URL(string: "https://example.com")!

        XCTAssertEqual(URLFileAccess.filePathIfLocal(fileURL), "/tmp/demo.txt")
        XCTAssertNil(URLFileAccess.filePathIfLocal(webURL))
    }
}
