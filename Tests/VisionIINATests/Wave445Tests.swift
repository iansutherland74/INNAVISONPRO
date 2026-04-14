import XCTest
@testable import VisionIINA

final class Wave445Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave445.value(), 445)
    XCTAssertEqual(UtilityWave445.label(), "wave-445")
  }
}
