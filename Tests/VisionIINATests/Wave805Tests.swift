import XCTest
@testable import VisionIINA

final class Wave805Tests: XCTestCase {
  func testParseEventListener() {
    let e = IINAParsedEvent.parse(from: "mpv.file-start")!
    XCTAssertEqual(e.namespace, .mpv)
    XCTAssertEqual(e.name, "file-start")
    XCTAssertFalse(e.isPropertyChanged)
  }
  func testParseIINAEvent() {
    let e = IINAParsedEvent.parse(from: "iina.window-resized")!
    XCTAssertEqual(e.namespace, .iina)
    XCTAssertEqual(e.name, "window-resized")
    XCTAssertFalse(e.isPropertyChanged)
  }
  func testParsePropertyChanged() {
    let e = IINAParsedEvent.parse(from: "mpv.fullscreen.changed")!
    XCTAssertEqual(e.namespace, .mpv)
    XCTAssertEqual(e.name, "fullscreen")
    XCTAssertTrue(e.isPropertyChanged)
  }
  func testParseInvalid() {
    XCTAssertNil(IINAParsedEvent.parse(from: "badformat"))
    XCTAssertNil(IINAParsedEvent.parse(from: "unknown.event"))
    XCTAssertNil(IINAParsedEvent.parse(from: "mpv.a.b.c"))
  }
}
