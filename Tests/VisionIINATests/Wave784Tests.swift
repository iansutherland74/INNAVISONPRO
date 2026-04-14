import XCTest
@testable import VisionIINA

final class Wave784Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave784.value(), 784)
    XCTAssertEqual(UtilityWave784.label(), "wave-784")
  }
}
