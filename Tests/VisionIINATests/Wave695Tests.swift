import XCTest
@testable import VisionIINA

final class Wave695Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave695.value(), 695)
    XCTAssertEqual(UtilityWave695.label(), "wave-695")
  }
}
