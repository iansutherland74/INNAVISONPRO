import XCTest
@testable import VisionIINA

final class Wave736Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave736.value(), 736)
    XCTAssertEqual(UtilityWave736.label(), "wave-736")
  }
}
