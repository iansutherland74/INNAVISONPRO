import XCTest
@testable import VisionIINA

final class Wave654Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave654.value(), 654)
    XCTAssertEqual(UtilityWave654.label(), "wave-654")
  }
}
