import XCTest
@testable import VisionIINA

final class Wave755Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave755.value(), 755)
    XCTAssertEqual(UtilityWave755.label(), "wave-755")
  }
}
