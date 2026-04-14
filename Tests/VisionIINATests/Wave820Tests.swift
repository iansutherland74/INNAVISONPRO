import XCTest
@testable import VisionIINA

final class Wave820Tests: XCTestCase {
    func testExecResultKeys() {
        XCTAssertEqual(IINAExecResultKey.status.rawValue, "status")
        XCTAssertEqual(IINAExecResultKey.stdout.rawValue, "stdout")
        XCTAssertEqual(IINAExecResultKey.stderr.rawValue, "stderr")
        XCTAssertEqual(IINAExecResultKey.allCases.count, 3)
    }
    func testErrorCodes() {
        XCTAssertEqual(IINAUtilsErrorCode.binaryNotFound.rawValue, -1)
        XCTAssertEqual(IINAUtilsErrorCode.runtime.rawValue,        -2)
        XCTAssertEqual(IINAUtilsErrorCode.allCases.count, 2)
        // codes must be negative
        XCTAssertTrue(IINAUtilsErrorCode.allCases.allSatisfy { $0.rawValue < 0 })
    }
    func testChooseFileOptionKeys() {
        XCTAssertEqual(IINAChooseFileOptionKey.chooseDir.rawValue,        "chooseDir")
        XCTAssertEqual(IINAChooseFileOptionKey.allowedFileTypes.rawValue, "allowedFileTypes")
        XCTAssertEqual(IINAChooseFileOptionKey.allCases.count, 2)
    }
}
