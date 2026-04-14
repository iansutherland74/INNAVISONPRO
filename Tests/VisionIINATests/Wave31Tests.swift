import XCTest
@testable import VisionIINA

final class FirstRunMarkerNamingTests: XCTestCase {

    func testMarkerFilenamePrefix() {
        XCTAssertEqual(FirstRunMarkerNaming.markerFilename(for: "intro"), ".intro")
    }

    func testMarkerURLComposition() {
        let base = URL(fileURLWithPath: "/tmp/vision-iina", isDirectory: true)
        let url = FirstRunMarkerNaming.markerURL(baseURL: base, key: "welcome")
        XCTAssertTrue(url.path.hasSuffix("/.welcome"))
    }
}
