import XCTest
@testable import VisionIINA

final class Wave627Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave627.value(), 627)
    XCTAssertEqual(UtilityWave627.label(), "wave-627")
  }
}
