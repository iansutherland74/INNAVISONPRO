import XCTest
@testable import VisionIINA

final class Wave569Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave569.value(), 569)
    XCTAssertEqual(UtilityWave569.label(), "wave-569")
  }
}
