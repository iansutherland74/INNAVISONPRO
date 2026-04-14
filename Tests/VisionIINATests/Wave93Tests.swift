import XCTest
@testable import VisionIINA
final class Wave93Tests: XCTestCase { func testSubsystem() { XCTAssertEqual(LoggerCore.subsystem("com.test.app"), "com.test.app") } }
