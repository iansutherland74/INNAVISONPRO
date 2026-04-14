import XCTest
@testable import VisionIINA

final class Wave201Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave201.value(), 201)
    XCTAssertEqual(UtilityWave201.label(), "wave-201")
  }
}
