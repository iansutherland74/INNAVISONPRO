import XCTest
@testable import VisionIINA

final class KeyBindingDataFileIndexTests: XCTestCase {
  func testIndexedName() { XCTAssertEqual(KeyBindingDataFileIndex.indexedName(base: "bindings", index: 3), "bindings-3") }
}
