import XCTest
@testable import VisionIINA

final class KeychainAccountLabelTests: XCTestCase {
  func testMake() { XCTAssertEqual(KeychainAccountLabel.make(username: "u", service: "s"), "s:u") }
}
