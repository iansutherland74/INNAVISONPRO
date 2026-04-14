import XCTest
@testable import VisionIINA

final class Wave386Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave386.value(), 386)
    XCTAssertEqual(UtilityWave386.label(), "wave-386")
  }
}
