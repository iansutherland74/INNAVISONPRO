import XCTest
@testable import VisionIINA

final class Wave321Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave321.value(), 321)
    XCTAssertEqual(UtilityWave321.label(), "wave-321")
  }
}
