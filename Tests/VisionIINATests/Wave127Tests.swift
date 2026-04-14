import XCTest
@testable import VisionIINA

final class Wave127Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave127.value(), 127)
    XCTAssertEqual(UtilityWave127.label(), "wave-127")
  }
}
