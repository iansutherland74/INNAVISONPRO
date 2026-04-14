import XCTest
@testable import VisionIINA
final class Wave89Tests: XCTestCase { func testAccountLabel() { XCTAssertEqual(KeychainAccessCore.accountLabel(service: "svc", user: "me"), "svc:me") } }
