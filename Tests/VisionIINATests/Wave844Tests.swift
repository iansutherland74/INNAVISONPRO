import XCTest
@testable import VisionIINA

final class Wave844Tests: XCTestCase {
    func testSubOverrideLevelMpvStrings() {
        XCTAssertEqual(IINAPreferenceSubOverrideLevel.yes.mpvString,   "yes")
        XCTAssertEqual(IINAPreferenceSubOverrideLevel.force.mpvString, "force")
        XCTAssertEqual(IINAPreferenceSubOverrideLevel.strip.mpvString, "strip")
        XCTAssertEqual(IINAPreferenceSubOverrideLevel.scale.mpvString, "scale")
        XCTAssertEqual(IINAPreferenceSubOverrideLevel.no.mpvString,    "no")
    }
    func testSubAlignStringProps() {
        XCTAssertEqual(IINAPreferenceSubAlign.top.stringForY,    "top")
        XCTAssertEqual(IINAPreferenceSubAlign.center.stringForY, "center")
        XCTAssertEqual(IINAPreferenceSubAlign.bottom.stringForY, "bottom")
        XCTAssertEqual(IINAPreferenceSubAlign.top.stringForX,    "left")
        XCTAssertEqual(IINAPreferenceSubAlign.center.stringForX, "center")
    }
    func testScreenshotFormatStrings() {
        XCTAssertEqual(IINAPreferenceScreenshotFormat.png.string,  "png")
        XCTAssertEqual(IINAPreferenceScreenshotFormat.jpg.string,  "jpg")
        XCTAssertEqual(IINAPreferenceScreenshotFormat.jpeg.string, "jpeg")
        XCTAssertEqual(IINAPreferenceScreenshotFormat.webp.string, "webp")
        XCTAssertEqual(IINAPreferenceScreenshotFormat.jxl.string,  "jxl")
    }
    func testRTSPTransportStrings() {
        XCTAssertEqual(IINAPreferenceRTSPTransportation.lavf.string, "lavf")
        XCTAssertEqual(IINAPreferenceRTSPTransportation.tcp.string,  "tcp")
        XCTAssertEqual(IINAPreferenceRTSPTransportation.udp.string,  "udp")
        XCTAssertEqual(IINAPreferenceRTSPTransportation.http.string, "http")
    }
    func testHardwareDecoderMpvStrings() {
        XCTAssertEqual(IINAPreferenceHardwareDecoder.disabled.mpvString, "no")
        XCTAssertEqual(IINAPreferenceHardwareDecoder.auto.mpvString,     "auto")
        XCTAssertEqual(IINAPreferenceHardwareDecoder.autoCopy.mpvString, "auto-copy")
    }
    func testAllCasesCount() {
        XCTAssertEqual(IINAPreferenceSubOverrideLevel.allCases.count,  5)
        XCTAssertEqual(IINAPreferenceSubAlign.allCases.count,          3)
        XCTAssertEqual(IINAPreferenceScreenshotFormat.allCases.count,  5)
        XCTAssertEqual(IINAPreferenceRTSPTransportation.allCases.count, 4)
        XCTAssertEqual(IINAPreferenceHardwareDecoder.allCases.count,   3)
    }
}
