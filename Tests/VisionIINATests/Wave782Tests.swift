import XCTest
@testable import VisionIINA

final class Wave782Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave782.value(), 782)
    XCTAssertEqual(UtilityWave782.label(), "wave-782")
  }
}
