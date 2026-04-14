import XCTest
@testable import VisionIINA

private final class PlaybackLifecycleObserverSpy: PlaybackLifecycleObserver {
    private(set) var receivedStates: [PlaybackLifecycleState] = []

    func playbackLifecycleDidChange(state: PlaybackLifecycleState) {
        receivedStates.append(state)
    }
}

final class Wave846Tests: XCTestCase {
    func testInitialStateIsIdle() {
        let adapter = PlaybackLifecycleDefaultAdapter()
        XCTAssertEqual(adapter.currentState, .idle)
    }

    func testLifecycleProgressionUpdatesState() {
        let adapter = PlaybackLifecycleDefaultAdapter()

        adapter.handle(.initialize)
        XCTAssertEqual(adapter.currentState, .initializing)

        adapter.handle(.prepared)
        XCTAssertEqual(adapter.currentState, .ready)

        adapter.handle(.play)
        XCTAssertEqual(adapter.currentState, .playing)

        adapter.handle(.pause)
        XCTAssertEqual(adapter.currentState, .paused)

        adapter.handle(.stop)
        XCTAssertEqual(adapter.currentState, .stopped)
    }

    func testErrorCapturesMessageInFailedState() {
        let adapter = PlaybackLifecycleDefaultAdapter()
        adapter.handle(.error("decode failed"))

        XCTAssertEqual(adapter.currentState, .failed("decode failed"))
    }

    func testObserverReceivesStateChangesInOrder() {
        let adapter = PlaybackLifecycleDefaultAdapter()
        let observer = PlaybackLifecycleObserverSpy()
        adapter.configure(observer: observer)

        adapter.handle(.initialize)
        adapter.handle(.prepared)
        adapter.handle(.play)

        XCTAssertEqual(observer.receivedStates, [.initializing, .ready, .playing])
    }

    func testClearingObserverStopsCallbacks() {
        let adapter = PlaybackLifecycleDefaultAdapter()
        let observer = PlaybackLifecycleObserverSpy()

        adapter.configure(observer: observer)
        adapter.handle(.initialize)

        adapter.configure(observer: nil)
        adapter.handle(.prepared)

        XCTAssertEqual(observer.receivedStates, [.initializing])
    }
}
