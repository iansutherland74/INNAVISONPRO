import XCTest
@testable import VisionIINA

private final class PlaybackLifecycleAdapterSpy: PlaybackLifecycleAdapter {
    private(set) var currentState: PlaybackLifecycleState = .idle
    private(set) var receivedEvents: [PlaybackLifecycleEvent] = []
    private(set) weak var configuredObserver: PlaybackLifecycleObserver?

    func configure(observer: PlaybackLifecycleObserver?) {
        configuredObserver = observer
    }

    func handle(_ event: PlaybackLifecycleEvent) {
        receivedEvents.append(event)
        switch event {
        case .initialize:
            currentState = .initializing
        case .prepared:
            currentState = .ready
        case .play:
            currentState = .playing
        case .pause:
            currentState = .paused
        case .stop:
            currentState = .stopped
        case let .error(message):
            currentState = .failed(message)
        }
    }
}

final class Wave859Tests: XCTestCase {
    func testStartupSmokeInitializeConfiguresLifecycleAndBootstraps() {
        let adapter = PlaybackLifecycleAdapterSpy()
        let bridge = PlaybackCoreBridge(lifecycleAdapter: adapter)

        bridge.initialize()

        XCTAssertNotNil(adapter.configuredObserver)
        XCTAssertEqual(adapter.receivedEvents, [.initialize, .prepared])
        XCTAssertEqual(adapter.currentState, .ready)

        let snapshot = bridge.latestBootstrapSnapshot
        XCTAssertNotNil(snapshot)
        XCTAssertEqual(snapshot?.network.enableCache, true)
        XCTAssertEqual(snapshot?.end, .stopAndClose)
    }
}
