//
//  FlatCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class FlatCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = "Hello, this is a test for plain-text. Let's see what happens."
        let output = "hellothisisatestforplaintextletsseewhathappens"
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .flatcase), output)
    }

    func testConversionFromFlatCase() {
        let input = "thisisflatcase"
        let output = "thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .flatcase), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = "THISISUPPERFLATCASE"
        let output = "thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .flatcase), output)
    }

    func testConversionFromCamelCase() {
        let input = "thisIsCamelCase"
        let output = "thisiscamelcase"
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .flatcase), output)
    }

    func testConversionFromPascalCase() {
        let input = "ThisIsPascalCase"
        let output = "thisispascalcase"
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .flatcase), output)
    }

    func testConversionFromSnakeCase() {
        let input = "this_is_snake_case"
        let output = "thisissnakecase"
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .flatcase), output)
    }

    func testConversionFromMacroCase() {
        let input = "THIS_IS_MACRO_CASE"
        let output = "thisismacrocase"
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .flatcase), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = "this_Is_Camel_Snake_Case"
        let output = "thisiscamelsnakecase"
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .flatcase), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = "This_Is_Pascal_Snake_Case"
        let output = "thisispascalsnakecase"
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .flatcase), output)
    }

    func testConversionFromKebabCase() {
        let input = "this-is-kebab-case"
        let output = "thisiskebabcase"
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .flatcase), output)
    }

    func testConversionFromTrainCase() {
        let input = "This-Is-Train-Case"
        let output = "thisistraincase"
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .flatcase), output)
    }

    func testConversionFromCobolCase() {
        let input = "THIS-IS-COBOL-CASE"
        let output = "thisiscobolcase"
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .flatcase), output)
    }

    func testConversionFromDonnerCase() {
        let input = "this|is|doner|case"
        let output = "thisisdonercase"
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .flatcase), output)
    }
}
