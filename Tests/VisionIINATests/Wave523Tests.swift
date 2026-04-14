import XCTest
@testable import VisionIINA

final class Wave523Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave523.value(), 523)
    XCTAssertEqual(UtilityWave523.label(), "wave-523")
  }
}
