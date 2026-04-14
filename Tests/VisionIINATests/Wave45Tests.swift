import XCTest
@testable import VisionIINA

final class FirstRunMarkerPolicyTests: XCTestCase {
    func testMarkerURLUsesSanitizedKey() {
        let base = URL(fileURLWithPath: "/tmp/vii", isDirectory: true)
        let url = FirstRunMarkerPolicy.markerURL(baseURL: base, rawKey: "hello/world")
        XCTAssertTrue(url.path.hasSuffix("/.hello_world"))
    }
}
