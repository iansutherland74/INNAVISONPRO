import XCTest
@testable import VisionIINA

final class Wave374Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave374.value(), 374)
    XCTAssertEqual(UtilityWave374.label(), "wave-374")
  }
}
