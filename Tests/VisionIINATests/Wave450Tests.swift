import XCTest
@testable import VisionIINA

final class Wave450Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave450.value(), 450)
    XCTAssertEqual(UtilityWave450.label(), "wave-450")
  }
}
