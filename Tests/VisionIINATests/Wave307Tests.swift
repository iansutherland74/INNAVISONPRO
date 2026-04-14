import XCTest
@testable import VisionIINA

final class Wave307Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave307.value(), 307)
    XCTAssertEqual(UtilityWave307.label(), "wave-307")
  }
}
