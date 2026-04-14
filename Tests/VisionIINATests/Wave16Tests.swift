import XCTest
@testable import VisionIINA

final class FirstRunMarkerStoreTests: XCTestCase {

    private func makeStoreDir() throws -> URL {
        let dir = FileManager.default.temporaryDirectory
            .appendingPathComponent("vision-iina-tests", isDirectory: true)
            .appendingPathComponent("wave16-\(UUID().uuidString)", isDirectory: true)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        return dir
    }

    func testCreateAndDetectMarker() throws {
        let dir = try makeStoreDir()
        let store = FirstRunMarkerStore(baseURL: dir)
        let key = FirstRunMarkerStore.Key("intro")

        XCTAssertFalse(store.hasMarker(for: key))
        XCTAssertTrue(store.isFirstRun(for: key))
        XCTAssertTrue(store.hasMarker(for: key))
    }

    func testUnsetRemovesMarker() throws {
        let dir = try makeStoreDir()
        let store = FirstRunMarkerStore(baseURL: dir)
        let key = FirstRunMarkerStore.Key("welcome")

        XCTAssertTrue(store.isFirstRun(for: key))
        XCTAssertTrue(store.hasMarker(for: key))

        store.unsetFirstRun(for: key)

        XCTAssertFalse(store.hasMarker(for: key))
    }

    func testIsFirstRunIsIdempotentAfterMarkerExists() throws {
        let dir = try makeStoreDir()
        let store = FirstRunMarkerStore(baseURL: dir)
        let key = FirstRunMarkerStore.Key("idempotent")

        XCTAssertTrue(store.isFirstRun(for: key))
        XCTAssertFalse(store.isFirstRun(for: key))
        XCTAssertFalse(store.isFirstRun(for: key))
    }

    func testUnsetIsIdempotentForMissingMarker() throws {
        let dir = try makeStoreDir()
        let store = FirstRunMarkerStore(baseURL: dir)
        let key = FirstRunMarkerStore.Key("missing")

        XCTAssertFalse(store.hasMarker(for: key))
        store.unsetFirstRun(for: key)
        store.unsetFirstRun(for: key)
        XCTAssertFalse(store.hasMarker(for: key))
    }
}
