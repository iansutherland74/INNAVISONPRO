import XCTest
@testable import VisionIINA

final class Wave847Tests: XCTestCase {
    func testEnvelopeUsesBridgeShapeAndFoundResolution() {
        let envelope = PluginPreferenceMessageBridge.makeResolutionEnvelope(
            key: IINAPreferenceKeyUI.enableOSD,
            preferences: [IINAPreferenceKeyUI.enableOSD: false],
            defaultPreferences: [IINAPreferenceKeyUI.enableOSD: true]
        )

        XCTAssertEqual(envelope.count, IINAMessageBridgeKey.envelopeCount)
        XCTAssertEqual(
            envelope[IINAMessageBridgeKey.envelopeNameIndex] as? String,
            PluginPreferenceMessageBridge.resolvedEventName
        )

        let wrapper = envelope[IINAMessageBridgeKey.envelopeDataIndex] as? [String: Any]
        let data = wrapper?[PluginPreferenceMessageBridge.dataKey] as? [String: Any]

        XCTAssertEqual(data?[PluginPreferenceMessageBridge.preferenceKey] as? String, IINAPreferenceKeyUI.enableOSD)
        XCTAssertEqual(data?[PluginPreferenceMessageBridge.resolutionKey] as? String, IINAPluginPreferenceResolution.found.rawValue)
        XCTAssertEqual(data?[PluginPreferenceMessageBridge.valueKey] as? Bool, false)
    }

    func testEnvelopeUsesDefaultFallbackResolution() {
        let envelope = PluginPreferenceMessageBridge.makeResolutionEnvelope(
            key: IINAPreferenceKeyGeneral.screenshotFormat,
            preferences: [:],
            defaultPreferences: [IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.webp.rawValue]
        )

        let wrapper = envelope[IINAMessageBridgeKey.envelopeDataIndex] as? [String: Any]
        let data = wrapper?[PluginPreferenceMessageBridge.dataKey] as? [String: Any]

        XCTAssertEqual(data?[PluginPreferenceMessageBridge.resolutionKey] as? String, IINAPluginPreferenceResolution.defaultFallback.rawValue)
        XCTAssertEqual(data?[PluginPreferenceMessageBridge.valueKey] as? Int, IINAPreferenceScreenshotFormat.webp.rawValue)
    }

    func testEnvelopeUndefinedOmitsValue() {
        let envelope = PluginPreferenceMessageBridge.makeResolutionEnvelope(
            key: "missingKey",
            preferences: [:],
            defaultPreferences: [:]
        )

        let wrapper = envelope[IINAMessageBridgeKey.envelopeDataIndex] as? [String: Any]
        let data = wrapper?[PluginPreferenceMessageBridge.dataKey] as? [String: Any]

        XCTAssertEqual(data?[PluginPreferenceMessageBridge.resolutionKey] as? String, IINAPluginPreferenceResolution.undefined.rawValue)
        XCTAssertNil(data?[PluginPreferenceMessageBridge.valueKey])
    }
}
