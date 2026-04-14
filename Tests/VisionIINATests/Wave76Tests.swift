import XCTest
@testable import VisionIINA

final class SleepPreventionDecisionTests: XCTestCase {
  func testDecide() {
    XCTAssertEqual(SleepPreventionDecision.decide(isPlaying: false, allowScreenSaverForAudio: false, isAudioOnly: false), .allowSleep)
    XCTAssertEqual(SleepPreventionDecision.decide(isPlaying: true, allowScreenSaverForAudio: true, isAudioOnly: true), .preventSystemSleepOnly)
    XCTAssertEqual(SleepPreventionDecision.decide(isPlaying: true, allowScreenSaverForAudio: false, isAudioOnly: false), .preventDisplaySleep)
  }
}
