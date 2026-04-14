import XCTest
@testable import VisionIINA

final class Wave113Tests: XCTestCase {
  func testValidationMessages() {
    XCTAssertNil(UtilityValidationResultStateText.message(for: .ok))
    XCTAssertEqual(UtilityValidationResultStateText.message(for: .valueIsEmpty), "Value is empty.")
    XCTAssertEqual(UtilityValidationResultStateText.message(for: .valueAlreadyExists), "Value already exists.")
    XCTAssertEqual(UtilityValidationResultStateText.message(for: .custom("x")), "x")
  }
}