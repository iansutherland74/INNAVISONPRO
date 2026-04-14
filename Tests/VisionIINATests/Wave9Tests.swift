import XCTest
@testable import VisionIINA

final class FilterParameterTests: XCTestCase {

    func testTextDefaultValue() {
        let p = FilterParameter.text(defaultValue: "abc")
        XCTAssertEqual(p.defaultValue.stringValue, "abc")
    }

    func testIntDefinitionStoresRangeAndDefault() {
        let p = FilterParameter.int(min: 3, max: 13, step: 2, defaultValue: 5)
        XCTAssertEqual(p.minInt, 3)
        XCTAssertEqual(p.maxInt, 13)
        XCTAssertEqual(p.step, 2)
        XCTAssertEqual(p.defaultValue.intValue, 5)
    }

    func testFloatDefinitionStoresRangeAndDefault() {
        let p = FilterParameter.float(min: 0, max: 1.5, defaultValue: 0.75)
        XCTAssertEqual(p.min, 0)
        XCTAssertEqual(p.max, 1.5)
        XCTAssertEqual(p.defaultValue.floatValue, 0.75, accuracy: 0.0001)
    }

    func testChooseDefinitionSetsChoicesAndDefault() {
        let p = FilterParameter.choose(from: ["nearest", "trilinear"], defaultChoiceIndex: 1)
        XCTAssertEqual(p.choices, ["nearest", "trilinear"])
        XCTAssertEqual(p.defaultValue.stringValue, "trilinear")
    }

    func testChooseDefinitionWithEmptyChoicesDoesNotCrash() {
        let p = FilterParameter.choose(from: [])
        XCTAssertTrue(p.choices.isEmpty)
        XCTAssertEqual(p.defaultValue.stringValue, "")
    }
}

final class FilterPresetTests: XCTestCase {

    func testLocalizedNameFallsBackToRawName() {
        let p = FilterPreset("my_custom", params: [:], paramOrder: "")
        XCTAssertEqual(p.localizedName, "my_custom")
    }

    func testLocalizedParamNameFallsBackToRawName() {
        let p = FilterPreset("my_custom", params: ["x": FilterParameter.text()], paramOrder: "x")
        XCTAssertEqual(p.localizedParamName("x"), "x")
    }

    func testPresetInstanceUsesDefaultValues() {
        let p = FilterPreset("test", params: ["x": FilterParameter.text(defaultValue: "42")], paramOrder: "x")
        let i = FilterPresetInstance(from: p)
        XCTAssertEqual(i.value(for: "x").stringValue, "42")
    }

    func testPresetInstanceReturnsOverriddenValue() {
        let p = FilterPreset("test", params: ["x": FilterParameter.text(defaultValue: "42")], paramOrder: "x")
        let i = FilterPresetInstance(from: p)
        i.params["x"] = FilterParameterValue(string: "99")
        XCTAssertEqual(i.value(for: "x").stringValue, "99")
    }
}

final class FilterPresetTransformerTests: XCTestCase {

    func testCropPresetBuildsMPVFilter() {
        guard let crop = FilterPreset.vfPresets.first(where: { $0.name == "crop" }) else {
            XCTFail("Missing crop preset")
            return
        }
        let i = FilterPresetInstance(from: crop)
        i.params["w"] = FilterParameterValue(string: "1920")
        i.params["h"] = FilterParameterValue(string: "1080")
        i.params["x"] = FilterParameterValue(string: "0")
        i.params["y"] = FilterParameterValue(string: "0")

        let f = crop.transformer(i)
        XCTAssertEqual(f.name, "crop")
        XCTAssertEqual(f.stringFormat, "crop=1920:1080:0:0")
    }

    func testSharpenPresetBuildsLavfiUnsharpFilter() {
        guard let sharpen = FilterPreset.vfPresets.first(where: { $0.name == "sharpen" }) else {
            XCTFail("Missing sharpen preset")
            return
        }
        let i = FilterPresetInstance(from: sharpen)
        i.params["amount"] = FilterParameterValue(float: 1.0)
        i.params["msize"] = FilterParameterValue(int: 5)

        let f = sharpen.transformer(i)
        XCTAssertEqual(f.name, "lavfi")
        XCTAssertTrue(f.stringFormat.contains("unsharp"))
    }

    func testCustomFFmpegPresetProducesLavfiGraph() {
        guard let custom = FilterPreset.vfPresets.first(where: { $0.name == "custom_ffmpeg" }) else {
            XCTFail("Missing custom_ffmpeg preset")
            return
        }
        let i = FilterPresetInstance(from: custom)
        i.params["name"] = FilterParameterValue(string: "eq")
        i.params["string"] = FilterParameterValue(string: "brightness=0.2")

        let f = custom.transformer(i)
        XCTAssertEqual(f.name, "lavfi")
        XCTAssertTrue(f.stringFormat.contains("[eq=brightness=0.2]"))
    }

    func testCustomMPVPresetProducesRawFilter() {
        guard let custom = FilterPreset.vfPresets.first(where: { $0.name == "custom_mpv" }) else {
            XCTFail("Missing custom_mpv preset")
            return
        }
        let i = FilterPresetInstance(from: custom)
        i.params["name"] = FilterParameterValue(string: "crop")
        i.params["string"] = FilterParameterValue(string: "100:100:0:0")

        let f = custom.transformer(i)
        XCTAssertEqual(f.name, "crop")
        XCTAssertEqual(f.stringFormat, "crop=100:100:0:0")
    }

    func testCustomMPVPresetWithMalformedInputDoesNotCrash() {
        guard let custom = FilterPreset.vfPresets.first(where: { $0.name == "custom_mpv" }) else {
            XCTFail("Missing custom_mpv preset")
            return
        }
        let i = FilterPresetInstance(from: custom)
        i.params["name"] = FilterParameterValue(string: "")
        i.params["string"] = FilterParameterValue(string: "")

        let f = custom.transformer(i)
        XCTAssertFalse(f.stringFormat.isEmpty)
    }

    func testAFPresetsContainTwoCustomEntries() {
        XCTAssertEqual(FilterPreset.afPresets.count, 2)
        XCTAssertEqual(FilterPreset.afPresets.map(\.name), ["custom_mpv", "custom_ffmpeg"])
    }
}

final class FilterPresetsLocalizationTests: XCTestCase {

    func testLocalizationDictionaryLoads() {
        XCTAssertFalse(FilterPreset.l10nDic.isEmpty)
    }
}
