import XCTest
@testable import VisionIINA

final class Wave731Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave731.value(), 731)
    XCTAssertEqual(UtilityWave731.label(), "wave-731")
  }
}
