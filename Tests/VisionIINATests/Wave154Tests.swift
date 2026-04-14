import XCTest
@testable import VisionIINA

final class Wave154Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave154.value(), 154)
    XCTAssertEqual(UtilityWave154.label(), "wave-154")
  }
}
