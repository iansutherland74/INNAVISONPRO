import XCTest
@testable import VisionIINA

final class Wave816Tests: XCTestCase {
    func testRawValues() {
        XCTAssertEqual(IINAPluginPreferenceResolution.found.rawValue,           "found")
        XCTAssertEqual(IINAPluginPreferenceResolution.defaultFallback.rawValue, "defaultFallback")
        XCTAssertEqual(IINAPluginPreferenceResolution.undefined.rawValue,       "undefined")
        XCTAssertEqual(IINAPluginPreferenceResolution.allCases.count, 3)
    }
    func testResolveLivePrefs() {
        let (res, val) = IINAPluginPreferenceResolution.resolve(
            key: "theme", preferences: ["theme": "dark"], defaultPreferences: ["theme": "light"])
        XCTAssertEqual(res, .found)
        XCTAssertEqual(val as? String, "dark")
    }
    func testResolveDefaultFallback() {
        let (res, val) = IINAPluginPreferenceResolution.resolve(
            key: "theme", preferences: [:], defaultPreferences: ["theme": "light"])
        XCTAssertEqual(res, .defaultFallback)
        XCTAssertEqual(val as? String, "light")
    }
    func testResolveUndefined() {
        let (res, val) = IINAPluginPreferenceResolution.resolve(
            key: "color", preferences: [:], defaultPreferences: [:])
        XCTAssertEqual(res, .undefined)
        XCTAssertNil(val)
    }
}
