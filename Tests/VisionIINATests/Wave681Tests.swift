import XCTest
@testable import VisionIINA

final class Wave681Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave681.value(), 681)
    XCTAssertEqual(UtilityWave681.label(), "wave-681")
  }
}
