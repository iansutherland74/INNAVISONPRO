import XCTest
@testable import VisionIINA

final class Wave607Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave607.value(), 607)
    XCTAssertEqual(UtilityWave607.label(), "wave-607")
  }
}
