//
//  CaseDetectorTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/16/21.
//

import XCTest
import Kebab

final class CaseDetectorTests: XCTestCase {
    func testFlatCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: flatCaseText), .flatcase)
    }

    func testUpperFlatCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: upperFlatCaseText), .UPPERFLATCASE)
    }

    func testCamelCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: camelCaseText), .camelCase)
    }

    func testPascalCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: pascalCaseText), .PascalCase)
    }

    func testSnakeCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: snakeCaseText), .snake_case)
    }

    func testMacroCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: macroCaseText), .MACRO_CASE)
    }

    func testCamelSnakeCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: camelSnakeCaseText), .camel_Snake_Case)
    }

    func testPascalnakeCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: pascalSnakeCaseText), .Pascal_Snake_Case)
    }

    func testKebabCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: kebabCaseText), .kebabCase)
    }

    func testTrainCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: trainCaseText), .trainCase)
    }

    func testCobolCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: cobolCaseText), .cobolCase)
    }

    func testDonerCase() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: donerCaseText), .donerCase)
    }
}
