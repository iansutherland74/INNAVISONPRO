import XCTest
@testable import VisionIINA

final class Wave178Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave178.value(), 178)
    XCTAssertEqual(UtilityWave178.label(), "wave-178")
  }
}
