import XCTest
@testable import VisionIINA

final class Wave170Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave170.value(), 170)
    XCTAssertEqual(UtilityWave170.label(), "wave-170")
  }
}
