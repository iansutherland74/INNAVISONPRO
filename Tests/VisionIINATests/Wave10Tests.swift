import XCTest
@testable import VisionIINA

final class PortShortcutFormatterTests: XCTestCase {

    func testReadableStringUppercasesKey() {
        XCTAssertEqual(PortShortcutFormatter.readableString(fromKey: "k", modifiers: []), "K")
    }

    func testReadableStringIncludesModifierSymbolsInOrder() {
        let flags: PortModifierFlags = [.control, .option, .shift, .command]
        XCTAssertEqual(PortShortcutFormatter.readableString(fromKey: "a", modifiers: flags), "⌃⌥⇧⌘A")
    }

    func testReadableStringAddsShiftForUppercaseInput() {
        XCTAssertEqual(PortShortcutFormatter.readableString(fromKey: "A", modifiers: [.command]), "⇧⌘A")
    }
}

final class SavedFilterTests: XCTestCase {

    func testInitStoresValues() {
        let f = SavedFilter(name: "Sharpen", filterString: "lavfi=[unsharp=5:5:1]", shortcutKey: "k", modifiers: [.command])
        XCTAssertEqual(f.name, "Sharpen")
        XCTAssertEqual(f.filterString, "lavfi=[unsharp=5:5:1]")
        XCTAssertEqual(f.shortcutKey, "k")
        XCTAssertTrue(f.shortcutKeyModifiers.contains(.command))
    }

    func testReadableShortcutUsesFormatter() {
        let f = SavedFilter(name: "Any", filterString: "crop=100:100:0:0", shortcutKey: "x", modifiers: [.control, .shift])
        XCTAssertEqual(f.readableShortCutKey, "⌃⇧X")
    }

    func testInitFromDictionaryValid() {
        let dict: [String: String] = [
            "name": "Blur",
            "filterString": "lavfi=[unsharp=5:5:-0.5:5:5:-0.5]",
            "shortcutKey": "b",
            "shortcutKeyModifiers": "co"
        ]
        let f = SavedFilter(dict: dict as Any)
        XCTAssertNotNil(f)
        XCTAssertEqual(f?.name, "Blur")
        XCTAssertEqual(f?.shortcutKey, "b")
        XCTAssertTrue(f?.shortcutKeyModifiers.contains(.control) ?? false)
        XCTAssertTrue(f?.shortcutKeyModifiers.contains(.option) ?? false)
    }

    func testInitFromDictionaryInvalidReturnsNil() {
        let dict: [String: String] = ["name": "only"]
        XCTAssertNil(SavedFilter(dict: dict as Any))
        XCTAssertNil(SavedFilter(dict: ["x": "y"] as Any))
    }

    func testToDictRoundTrip() {
        let original = SavedFilter(name: "Edge", filterString: "hflip", shortcutKey: "e", modifiers: [.command, .option])
        let dict = original.toDict()
        let rebuilt = SavedFilter(dict: dict as Any)
        XCTAssertNotNil(rebuilt)
        XCTAssertEqual(rebuilt?.name, "Edge")
        XCTAssertEqual(rebuilt?.filterString, "hflip")
        XCTAssertEqual(rebuilt?.shortcutKey, "e")
        XCTAssertTrue(rebuilt?.shortcutKeyModifiers.contains(.command) ?? false)
        XCTAssertTrue(rebuilt?.shortcutKeyModifiers.contains(.option) ?? false)
    }

    func testToDictModifierEncodingIsDeterministic() {
        let f = SavedFilter(name: "Det", filterString: "vflip", shortcutKey: "d", modifiers: [.command, .control])
        let dict = f.toDict()
        XCTAssertEqual(dict["shortcutKeyModifiers"], "cm")
    }

    func testUnknownModifierCharactersAreIgnored() {
        let dict: [String: String] = [
            "name": "N",
            "filterString": "x",
            "shortcutKey": "n",
            "shortcutKeyModifiers": "czq"
        ]
        let f = SavedFilter(dict: dict as Any)
        XCTAssertNotNil(f)
        XCTAssertTrue(f?.shortcutKeyModifiers.contains(.control) ?? false)
        XCTAssertFalse(f?.shortcutKeyModifiers.contains(.option) ?? true)
        XCTAssertFalse(f?.shortcutKeyModifiers.contains(.shift) ?? true)
        XCTAssertFalse(f?.shortcutKeyModifiers.contains(.command) ?? true)
    }
}
