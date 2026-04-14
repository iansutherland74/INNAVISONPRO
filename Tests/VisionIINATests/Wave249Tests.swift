import XCTest
@testable import VisionIINA

final class Wave249Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave249.value(), 249)
    XCTAssertEqual(UtilityWave249.label(), "wave-249")
  }
}
