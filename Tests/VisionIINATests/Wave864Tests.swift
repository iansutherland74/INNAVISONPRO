import XCTest
@testable import VisionIINA

final class Wave864Tests: XCTestCase {
    func testConcurrentBootstrapBuildsRemainDeterministic() {
        let preferences: [String: Any] = [
            IINAPreferenceKeyGeneral.resumeLastPosition: true,
            IINAPreferenceKeyGeneral.pauseWhenOpen: false,
            IINAPreferenceKeyGeneral.fullScreenWhenOpen: true,
            IINAPreferenceKeyGeneral.autoRepeat: false,
            IINAPreferenceKeyGeneral.keepOpenOnFileEnd: true,
            IINAPreferenceKeyNetwork.enableCache: true,
            IINAPreferenceKeyNetwork.defaultCacheSize: 4096,
            IINAPreferenceKeyNetwork.cacheBufferSize: 1024,
            IINAPreferenceKeyUI.hardwareDecoder: IINAPreferenceHardwareDecoder.autoCopy.rawValue,
        ]

        let expected = PlaybackSessionBootstrap.build(
            preferences: preferences,
            defaultPreferences: [:],
            hasNextItem: false
        )

        let queue = DispatchQueue(label: "wave864.concurrent", attributes: .concurrent)
        let group = DispatchGroup()
        let lock = NSLock()
        var snapshots: [PlaybackSessionBootstrapSnapshot] = []

        for _ in 0..<200 {
            group.enter()
            queue.async {
                let snapshot = PlaybackSessionBootstrap.build(
                    preferences: preferences,
                    defaultPreferences: [:],
                    hasNextItem: false
                )
                lock.lock()
                snapshots.append(snapshot)
                lock.unlock()
                group.leave()
            }
        }

        group.wait()
        XCTAssertEqual(snapshots.count, 200)
        for snapshot in snapshots {
            XCTAssertEqual(snapshot, expected)
        }
    }
}
