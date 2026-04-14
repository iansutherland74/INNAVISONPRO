import XCTest
@testable import VisionIINA

final class MPVHookTests: XCTestCase {

    func testKnownRawValues() {
        XCTAssertEqual(MPVHook.onBeforeStartFile.rawValue, "on_before_start_file")
        XCTAssertEqual(MPVHook.onLoad.rawValue, "on_load")
        XCTAssertEqual(MPVHook.onLoadFail.rawValue, "on_load_fail")
        XCTAssertEqual(MPVHook.onPreLoaded.rawValue, "on_preloaded")
        XCTAssertEqual(MPVHook.onUnLoad.rawValue, "on_unload")
    }

    func testRawRepresentableRoundTrip() {
        let hook = MPVHook(rawValue: "custom_hook")
        XCTAssertEqual(hook?.rawValue, "custom_hook")
    }
}

final class MPVAudioDeviceTests: XCTestCase {

    func testDescriptionWhenConnected() {
        let device = MPVAudioDevice(desc: "Built-in Output", name: "coreaudio/123")
        XCTAssertEqual(device.description, "[Built-in Output] coreaudio/123")
    }

    func testDescriptionWhenMissing() {
        let device = MPVAudioDevice(desc: "HDMI", name: "coreaudio/999", isMissing: true)
        XCTAssertEqual(device.description, "[HDMI (missing)] coreaudio/999")
    }

    func testDriverDetection() {
        XCTAssertEqual(MPVAudioDevice(desc: "A", name: "coreaudio/1").driver, "coreaudio")
        XCTAssertEqual(MPVAudioDevice(desc: "B", name: "avfoundation/2").driver, "avfoundation")
        XCTAssertNil(MPVAudioDevice(desc: "C", name: "auto").driver)
    }

    func testDictionaryInit() {
        let device = MPVAudioDevice(["description": "USB DAC", "name": "coreaudio/abc"])
        XCTAssertEqual(device?.desc, "USB DAC")
        XCTAssertEqual(device?.name, "coreaudio/abc")
        XCTAssertEqual(device?.isMissing, false)
    }

    func testDictionaryInitReturnsNilWhenMissingDescription() {
        let device = MPVAudioDevice(["name": "coreaudio/abc"])
        XCTAssertNil(device)
    }

    func testDictionaryInitReturnsNilWhenMissingName() {
        let device = MPVAudioDevice(["description": "USB DAC"])
        XCTAssertNil(device)
    }

    func testReplacingDriverPreservesDeviceTail() {
        let original = MPVAudioDevice(desc: "Device", name: "coreaudio/xyz")
        let replaced = MPVAudioDevice(original, "avfoundation")
        XCTAssertEqual(replaced.name, "avfoundation/xyz")
        XCTAssertEqual(replaced.desc, "Device")
        XCTAssertFalse(replaced.isMissing)
    }

    func testReplacingDriverOnAutoPrefixesName() {
        let original = MPVAudioDevice(desc: "Default", name: "auto")
        let replaced = MPVAudioDevice(original, "coreaudio")
        XCTAssertEqual(replaced.name, "coreaudio/auto")
    }
}
