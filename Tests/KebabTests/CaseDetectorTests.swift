//
//  CaseDetectorTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/16/21.
//

import XCTest
import Kebab

final class CaseDetectorTests: XCTestCase {

    func testEmptyString() {
        XCTAssertEqual(CaseDetector().detectCase(in: ""), .plainText)
    }

    func testFlatCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: flatCaseText), .flatcase)
    }

    func testUpperFlatCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: upperFlatCaseText), .UPPERFLATCASE)
    }

    func testCamelCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: camelCaseText), .camelCase)
    }

    func testPascalCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: pascalCaseText), .PascalCase)
    }

    func testSnakeCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: snakeCaseText), .snake_case)
    }

    func testMacroCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: macroCaseText), .MACRO_CASE)
    }

    func testCamelSnakeCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: camelSnakeCaseText), .camel_Snake_Case)
    }

    func testPascalnakeCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: pascalSnakeCaseText), .Pascal_Snake_Case)
    }

    func testKebabCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: kebabCaseText), .kebabCase)
    }

    func testTrainCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: trainCaseText), .trainCase)
    }

    func testCobolCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: cobolCaseText), .cobolCase)
    }

    func testDonerCase() {
        XCTAssertEqual(CaseDetector().detectCase(in: donerCaseText), .donerCase)
    }
}
