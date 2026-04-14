import XCTest
@testable import VisionIINA

final class TempFileURLFactoryTests: XCTestCase {
    func testMakeUsesTempDirectory() {
        let url = TempFileURLFactory.make("demo.txt")
        XCTAssertTrue(url.path.hasSuffix("/demo.txt"))
    }
}
