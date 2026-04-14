import XCTest
@testable import VisionIINA

final class Wave802Tests: XCTestCase {
  func testNotificationNames() {
    XCTAssertEqual(Notification.Name.iinaMainWindowChanged.rawValue, "IINAMainWindowChanged")
    XCTAssertEqual(Notification.Name.iinaPlaylistChanged.rawValue, "IINAPlaylistChanged")
    XCTAssertEqual(Notification.Name.iinaFileLoaded.rawValue, "IINAFileLoaded")
    XCTAssertEqual(Notification.Name.iinaPlayerShutdown.rawValue, "iinaPlayerShutdown")
  }
  func testIINAError() {
    let err = IINAError.unsupportedMPVNodeFormat(99)
    if case .unsupportedMPVNodeFormat(let code) = err {
      XCTAssertEqual(code, 99)
    } else {
      XCTFail("unexpected case")
    }
  }
}
