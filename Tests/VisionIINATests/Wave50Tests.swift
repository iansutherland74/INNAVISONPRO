import XCTest
@testable import VisionIINA

final class DiagnosticsValueFormatterTests: XCTestCase {
    func testBoolAndOptionalFormatting() {
        XCTAssertEqual(DiagnosticsValueFormatter.boolString(true), "true")
        XCTAssertEqual(DiagnosticsValueFormatter.boolString(false), "false")
        XCTAssertEqual(DiagnosticsValueFormatter.optionalString(Optional<Int>(5)), "5")
        XCTAssertEqual(DiagnosticsValueFormatter.optionalString(Optional<Int>.none), "nil")
    }
}
