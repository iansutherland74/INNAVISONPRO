import XCTest
@testable import VisionIINA
final class Wave96Tests: XCTestCase { func testPropertyName() { XCTAssertEqual(MPVOptionDefaultsCore.propertyName("demuxer-max-bytes"), "option-info/demuxer-max-bytes/default-value") } }
