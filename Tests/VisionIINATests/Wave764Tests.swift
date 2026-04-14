import XCTest
@testable import VisionIINA

final class Wave764Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave764.value(), 764)
    XCTAssertEqual(UtilityWave764.label(), "wave-764")
  }
}
