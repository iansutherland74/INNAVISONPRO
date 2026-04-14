import XCTest
@testable import VisionIINA

final class Wave544Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave544.value(), 544)
    XCTAssertEqual(UtilityWave544.label(), "wave-544")
  }
}
