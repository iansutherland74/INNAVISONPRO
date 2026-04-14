import XCTest
@testable import VisionIINA

final class Wave112Tests: XCTestCase {
  func testMainThreadFlag() {
    XCTAssertTrue(UtilityMainThreadExecutor.isMainThread)
  }
}