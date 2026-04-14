import XCTest
@testable import VisionIINA

final class Wave834Tests: XCTestCase {
    func testMouseInputNames() {
        XCTAssertEqual(IINAPluginMouseInputName.mouse,      "*mouse")
        XCTAssertEqual(IINAPluginMouseInputName.rightMouse, "*rightMouse")
        XCTAssertEqual(IINAPluginMouseInputName.otherMouse, "*otherMouse")
        XCTAssertEqual(IINAPluginMouseInputName.all.count, 3)
    }
    func testMouseInputNamePrefix() {
        for name in IINAPluginMouseInputName.all {
            XCTAssertTrue(IINAPluginMouseInputName.isMouseInput(name))
        }
        XCTAssertFalse(IINAPluginMouseInputName.isMouseInput("keyDown"))
    }
    func testDispatchPriorityOrdering() {
        XCTAssertLessThan(IINAPluginInputDispatchPriority.low,
                          IINAPluginInputDispatchPriority.high)
    }
    func testDispatchPriorityClassification() {
        XCTAssertTrue(IINAPluginInputDispatchPriority.isHigh(200))
        XCTAssertTrue(IINAPluginInputDispatchPriority.isHigh(300))
        XCTAssertTrue(IINAPluginInputDispatchPriority.isLow(100))
        XCTAssertTrue(IINAPluginInputDispatchPriority.isLow(150))
        XCTAssertFalse(IINAPluginInputDispatchPriority.isLow(200))
    }
}
