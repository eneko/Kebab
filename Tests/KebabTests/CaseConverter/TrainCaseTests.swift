//
//  TrainCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class TrainCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = plainText
        let output = "Hello-This-Is-A-Test-For-Plain-Text-Let-S-See-What-Happens"
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .trainCase), output)
    }

    func testConversionFromFlatCase() {
        let input = flatCaseText
        let output = "Thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .trainCase), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = upperFlatCaseText
        let output = "Thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .trainCase), output)
    }

    func testConversionFromCamelCase() {
        let input = camelCaseText
        let output = "This-Is-Camel-Case"
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .trainCase), output)
    }

    func testConversionFromPascalCase() {
        let input = pascalCaseText
        let output = "This-Is-Pascal-Case"
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .trainCase), output)
    }

    func testConversionFromSnakeCase() {
        let input = snakeCaseText
        let output = "This-Is-Snake-Case"
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .trainCase), output)
    }

    func testConversionFromMacroCase() {
        let input = macroCaseText
        let output = "This-Is-Macro-Case"
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .trainCase), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = camelSnakeCaseText
        let output = "This-Is-Camel-Snake-Case"
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .trainCase), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = pascalSnakeCaseText
        let output = "This-Is-Pascal-Snake-Case"
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .trainCase), output)
    }

    func testConversionFromKebabCase() {
        let input = kebabCaseText
        let output = "This-Is-Kebab-Case"
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .trainCase), output)
    }

    func testConversionFromTrainCase() {
        let input = trainCaseText
        let output = "This-Is-Train-Case"
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .trainCase), output)
    }

    func testConversionFromCobolCase() {
        let input = cobolCaseText
        let output = "This-Is-Cobol-Case"
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .trainCase), output)
    }

    func testConversionFromDonnerCase() {
        let input = donerCaseText
        let output = "This-Is-Doner-Case"
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .trainCase), output)
    }
}
