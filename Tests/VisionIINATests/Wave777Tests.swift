import XCTest
@testable import VisionIINA

final class Wave777Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave777.value(), 777)
    XCTAssertEqual(UtilityWave777.label(), "wave-777")
  }
}
