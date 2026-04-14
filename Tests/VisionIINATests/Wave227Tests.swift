import XCTest
@testable import VisionIINA

final class Wave227Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave227.value(), 227)
    XCTAssertEqual(UtilityWave227.label(), "wave-227")
  }
}
