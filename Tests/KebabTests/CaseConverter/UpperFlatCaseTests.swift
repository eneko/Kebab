//
//  UpperFlatCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class UpperFlatCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = plainText
        let output = "HELLOTHISISATESTFORPLAINTEXTLETSSEEWHATHAPPENS"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .UPPERFLATCASE), output)
    }

    func testConversionFromFlatCase() {
        let input = flatCaseText
        let output = "THISISFLATCASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .UPPERFLATCASE), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = upperFlatCaseText
        let output = "THISISUPPERFLATCASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .UPPERFLATCASE), output)
    }

    func testConversionFromCamelCase() {
        let input = camelCaseText
        let output = "THISISCAMELCASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .UPPERFLATCASE), output)
    }

    func testConversionFromPascalCase() {
        let input = pascalCaseText
        let output = "THISISPASCALCASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .UPPERFLATCASE), output)
    }

    func testConversionFromSnakeCase() {
        let input = snakeCaseText
        let output = "THISISSNAKECASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .UPPERFLATCASE), output)
    }

    func testConversionFromMacroCase() {
        let input = macroCaseText
        let output = "THISISMACROCASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .UPPERFLATCASE), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = camelSnakeCaseText
        let output = "THISISCAMELSNAKECASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .UPPERFLATCASE), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = pascalSnakeCaseText
        let output = "THISISPASCALSNAKECASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .UPPERFLATCASE), output)
    }

    func testConversionFromKebabCase() {
        let input = kebabCaseText
        let output = "THISISKEBABCASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .UPPERFLATCASE), output)
    }

    func testConversionFromTrainCase() {
        let input = trainCaseText
        let output = "THISISTRAINCASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .UPPERFLATCASE), output)
    }

    func testConversionFromCobolCase() {
        let input = cobolCaseText
        let output = "THISISCOBOLCASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .UPPERFLATCASE), output)
    }

    func testConversionFromDonnerCase() {
        let input = donerCaseText
        let output = "THISISDONERCASE"
        XCTAssertEqual(converter.convert(text: input, to: .UPPERFLATCASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .UPPERFLATCASE), output)
    }
}
