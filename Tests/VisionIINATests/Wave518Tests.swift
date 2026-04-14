import XCTest
@testable import VisionIINA

final class Wave518Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave518.value(), 518)
    XCTAssertEqual(UtilityWave518.label(), "wave-518")
  }
}
