import XCTest
@testable import VisionIINA

final class KeyMappingPrintableDescriptionTests: XCTestCase {
  func testMake() { XCTAssertTrue(KeyMappingPrintableDescription.make(key: "k", action: "pause", isIINACommand: false).contains("pause")) }
}
