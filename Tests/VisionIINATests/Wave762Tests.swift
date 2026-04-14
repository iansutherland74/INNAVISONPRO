import XCTest
@testable import VisionIINA

final class Wave762Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave762.value(), 762)
    XCTAssertEqual(UtilityWave762.label(), "wave-762")
  }
}
