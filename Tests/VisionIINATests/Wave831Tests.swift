import XCTest
@testable import VisionIINA

final class Wave831Tests: XCTestCase {
    func testBoolStrings() {
        XCTAssertEqual(IINAMPVBoolString.yes, "yes")
        XCTAssertEqual(IINAMPVBoolString.no,  "no")
        XCTAssertNotEqual(IINAMPVBoolString.yes, IINAMPVBoolString.no)
    }
    func testLogLevelNames() {
        XCTAssertEqual(IINAMPVLogLevelName.fatal,  "fatal")
        XCTAssertEqual(IINAMPVLogLevelName.warn,   "warn")
        XCTAssertEqual(IINAMPVLogLevelName.debug,  "debug")
        XCTAssertEqual(IINAMPVLogLevelName.trace,  "trace")
    }
    func testDefaultLevelIsWarn() {
        XCTAssertEqual(IINAMPVLogLevelName.defaultLevel, "warn")
    }
    func testAllContainsEightLevels() {
        XCTAssertEqual(IINAMPVLogLevelName.all.count, 8)
    }
}
