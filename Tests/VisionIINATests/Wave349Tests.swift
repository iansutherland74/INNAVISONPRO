import XCTest
@testable import VisionIINA

final class Wave349Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave349.value(), 349)
    XCTAssertEqual(UtilityWave349.label(), "wave-349")
  }
}
