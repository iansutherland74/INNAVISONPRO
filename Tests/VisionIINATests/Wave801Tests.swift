import XCTest
@testable import VisionIINA

final class Wave801Tests: XCTestCase {
  func testSyncInterval() {
    XCTAssertEqual(AppDataCoreConstants.syncTimeInterval, 0.1)
    XCTAssertEqual(AppDataCoreConstants.syncTimePreciseInterval, 0.04)
  }
  func testSpeedValues() {
    XCTAssertEqual(AppDataCoreConstants.availableSpeedValues.count, 11)
    XCTAssertEqual(AppDataCoreConstants.minSpeed, 0.25)
    XCTAssertEqual(AppDataCoreConstants.maxSpeed, 16.0)
    XCTAssertEqual(AppDataCoreConstants.mpvMinPlaybackSpeed, 0.01)
  }
  func testAspects() {
    XCTAssertEqual(AppDataCoreConstants.aspects.count, 9)
    XCTAssertEqual(AppDataCoreConstants.aspectsInPanel.count, 6)
    XCTAssertEqual(AppDataCoreConstants.cropsInPanel.count, 6)
    XCTAssertEqual(AppDataCoreConstants.rotations, [0, 90, 180, 270])
  }
  func testMaps() {
    XCTAssertEqual(AppDataCoreConstants.seekAmountMap.count, 5)
    XCTAssertEqual(AppDataCoreConstants.volumeMap.count, 5)
    XCTAssertEqual(AppDataCoreConstants.widthWhenNoVideo, 640)
    XCTAssertEqual(AppDataCoreConstants.heightWhenNoVideo, 360)
  }
}
