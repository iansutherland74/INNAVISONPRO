import XCTest
@testable import VisionIINA

final class Wave132Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave132.value(), 132)
    XCTAssertEqual(UtilityWave132.label(), "wave-132")
  }
}
