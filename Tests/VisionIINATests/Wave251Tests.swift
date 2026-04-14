import XCTest
@testable import VisionIINA

final class Wave251Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave251.value(), 251)
    XCTAssertEqual(UtilityWave251.label(), "wave-251")
  }
}
