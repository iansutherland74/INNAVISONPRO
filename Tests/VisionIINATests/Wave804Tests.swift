import XCTest
@testable import VisionIINA

final class Wave804Tests: XCTestCase {
  func testConsoleMethodMap() {
    XCTAssertEqual(IINAPluginLogLevel.consoleMethodMap["log"], .debug)
    XCTAssertEqual(IINAPluginLogLevel.consoleMethodMap["warn"], .warning)
    XCTAssertEqual(IINAPluginLogLevel.consoleMethodMap["error"], .error)
    XCTAssertNil(IINAPluginLogLevel.consoleMethodMap["info"])
  }
  func testRawValues() {
    XCTAssertEqual(IINAPluginLogLevel.debug.rawValue, "debug")
    XCTAssertEqual(IINAPluginLogLevel.warning.rawValue, "warning")
    XCTAssertEqual(IINAPluginLogLevel.allCases.count, 3)
  }
}
