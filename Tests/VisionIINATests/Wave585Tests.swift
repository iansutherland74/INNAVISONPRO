import XCTest
@testable import VisionIINA

final class Wave585Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave585.value(), 585)
    XCTAssertEqual(UtilityWave585.label(), "wave-585")
  }
}
