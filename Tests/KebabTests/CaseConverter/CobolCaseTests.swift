//
//  CobolCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class CobolCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = plainText
        let output = "HELLO-THIS-IS-A-TEST-FOR-PLAIN-TEXT-LET-S-SEE-WHAT-HAPPENS"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .cobolCase), output)
    }

    func testConversionFromFlatCase() {
        let input = flatCaseText
        let output = "THISISFLATCASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .cobolCase), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = upperFlatCaseText
        let output = "THISISUPPERFLATCASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .cobolCase), output)
    }

    func testConversionFromCamelCase() {
        let input = camelCaseText
        let output = "THIS-IS-CAMEL-CASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .cobolCase), output)
    }

    func testConversionFromPascalCase() {
        let input = pascalCaseText
        let output = "THIS-IS-PASCAL-CASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .cobolCase), output)
    }

    func testConversionFromSnakeCase() {
        let input = snakeCaseText
        let output = "THIS-IS-SNAKE-CASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .cobolCase), output)
    }

    func testConversionFromMacroCase() {
        let input = macroCaseText
        let output = "THIS-IS-MACRO-CASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .cobolCase), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = camelSnakeCaseText
        let output = "THIS-IS-CAMEL-SNAKE-CASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .cobolCase), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = pascalSnakeCaseText
        let output = "THIS-IS-PASCAL-SNAKE-CASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .cobolCase), output)
    }

    func testConversionFromKebabCase() {
        let input = kebabCaseText
        let output = "THIS-IS-KEBAB-CASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .cobolCase), output)
    }

    func testConversionFromTrainCase() {
        let input = trainCaseText
        let output = "THIS-IS-TRAIN-CASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .cobolCase), output)
    }

    func testConversionFromCobolCase() {
        let input = cobolCaseText
        let output = "THIS-IS-COBOL-CASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .cobolCase), output)
    }

    func testConversionFromDonnerCase() {
        let input = donerCaseText
        let output = "THIS-IS-DONER-CASE"
        XCTAssertEqual(converter.convert(text: input, to: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .cobolCase), output)
    }
}
