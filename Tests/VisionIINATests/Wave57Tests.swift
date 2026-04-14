import XCTest
@testable import VisionIINA

final class HardwareDecodeCodecSetTests: XCTestCase {
  func testUniqueSorted() { XCTAssertEqual(HardwareDecodeCodecSet.uniqueSorted(["h264", "av1", "h264"]), ["av1", "h264"]) }
}
