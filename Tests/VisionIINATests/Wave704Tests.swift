import XCTest
@testable import VisionIINA

final class Wave704Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave704.value(), 704)
    XCTAssertEqual(UtilityWave704.label(), "wave-704")
  }
}
