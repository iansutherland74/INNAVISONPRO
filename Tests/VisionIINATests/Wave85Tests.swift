import XCTest
@testable import VisionIINA
final class Wave85Tests: XCTestCase { func testJSON() { let data = Data("{\"a\":1}".utf8); let obj = JustExtensionCore.jsonObject(from: data) as? [String: Int]; XCTAssertEqual(obj?["a"], 1) } }
