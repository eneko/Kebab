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
        let input = "Hello, this is a test for plain-text. Let's see what happens."
        let output = "Hello-This-Is-A-Test-For-Plain-Text-Let-S-See-What-Happens"
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .trainCase), output)
    }

    func testConversionFromFlatCase() {
        let input = "thisisflatcase"
        let output = "Thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .trainCase), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = "THISISUPPERFLATCASE"
        let output = "Thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .trainCase), output)
    }

    func testConversionFromCamelCase() {
        let input = "thisIsCamelCase"
        let output = "This-Is-Camel-Case"
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .trainCase), output)
    }

    func testConversionFromPascalCase() {
        let input = "ThisIsPascalCase"
        let output = "This-Is-Pascal-Case"
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .trainCase), output)
    }

    func testConversionFromSnakeCase() {
        let input = "this_is_snake_case"
        let output = "This-Is-Snake-Case"
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .trainCase), output)
    }

    func testConversionFromMacroCase() {
        let input = "THIS_IS_MACRO_CASE"
        let output = "This-Is-Macro-Case"
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .trainCase), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = "this_Is_Camel_Snake_Case"
        let output = "This-Is-Camel-Snake-Case"
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .trainCase), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = "This_Is_Pascal_Snake_Case"
        let output = "This-Is-Pascal-Snake-Case"
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .trainCase), output)
    }

    func testConversionFromKebabCase() {
        let input = "this-is-kebab-case"
        let output = "This-Is-Kebab-Case"
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .trainCase), output)
    }

    func testConversionFromTrainCase() {
        let input = "This-Is-Train-Case"
        let output = "This-Is-Train-Case"
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .trainCase), output)
    }

    func testConversionFromCobolCase() {
        let input = "THIS-IS-COBOL-CASE"
        let output = "This-Is-Cobol-Case"
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .trainCase), output)
    }

    func testConversionFromDonnerCase() {
        let input = "this|is|doner|case"
        let output = "This-Is-Doner-Case"
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .trainCase), output)
    }
}
