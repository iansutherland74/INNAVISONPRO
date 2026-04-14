import XCTest
@testable import VisionIINA
final class Wave88Tests: XCTestCase { func testPathNormalize() { XCTAssertEqual(KeyBindingTranslatorCore.normalizeKeyPath(["a", "b"]), ["a.b"]) } }
