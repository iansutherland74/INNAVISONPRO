//
//  Wave7Tests.swift
//  VisionIINATests
//

import XCTest
@testable import VisionIINA

final class GeometryDefTests: XCTestCase {

    // MARK: - Empty / nil guard

    func testEmptyStringReturnsNil() {
        XCTAssertNil(GeometryDef.parse(""))
    }

    // MARK: - Full geometry "WxH+X+Y"

    func testFullGeometryParsesWidthAndHeight() {
        let g = GeometryDef.parse("1280x720+10+20")
        XCTAssertEqual(g?.w, "1280")
        XCTAssertEqual(g?.h, "720")
    }

    func testFullGeometryParsesPositiveOffsets() {
        let g = GeometryDef.parse("1280x720+10+20")
        XCTAssertEqual(g?.x, "10")
        XCTAssertEqual(g?.y, "20")
        XCTAssertEqual(g?.xSign, "+")
        XCTAssertEqual(g?.ySign, "+")
    }

    func testFullGeometryParsesNegativeOffsets() {
        let g = GeometryDef.parse("1280x720-10-20")
        XCTAssertEqual(g?.xSign, "-")
        XCTAssertEqual(g?.ySign, "-")
        XCTAssertEqual(g?.x, "10")
        XCTAssertEqual(g?.y, "20")
    }

    func testMixedSigns() {
        let g = GeometryDef.parse("100x100+5-15")
        XCTAssertEqual(g?.xSign, "+")
        XCTAssertEqual(g?.ySign, "-")
    }

    // MARK: - Partial geometry

    func testWidthAndHeightOnly() {
        let g = GeometryDef.parse("640x480")
        XCTAssertEqual(g?.w, "640")
        XCTAssertEqual(g?.h, "480")
        XCTAssertNil(g?.x)
        XCTAssertNil(g?.y)
    }

    func testWidthOnlyNoHeight() {
        let g = GeometryDef.parse("640")
        XCTAssertEqual(g?.w, "640")
        XCTAssertNil(g?.h)
    }

    func testOffsetOnlyNoSize() {
        let g = GeometryDef.parse("+100+200")
        XCTAssertNil(g?.w)
        XCTAssertNil(g?.h)
        XCTAssertEqual(g?.x, "100")
        XCTAssertEqual(g?.y, "200")
    }

    // MARK: - Percentage values

    func testPercentageWidth() {
        let g = GeometryDef.parse("50%x50%")
        XCTAssertEqual(g?.w, "50%")
        XCTAssertEqual(g?.h, "50%")
    }

    // MARK: - Struct mutability

    func testGeometryDefIsValueType() {
        var g1 = GeometryDef.parse("800x600")!
        let g2 = g1
        g1.w = "1024"
        XCTAssertEqual(g2.w, "800")
        XCTAssertEqual(g1.w, "1024")
    }
}
