import XCTest
@testable import VisionIINA

final class MPVOptionDefaultPropertyNameTests: XCTestCase {
  func testMake() { XCTAssertEqual(MPVOptionDefaultPropertyName.make("aid"), "option-info/aid/default-value") }
}
