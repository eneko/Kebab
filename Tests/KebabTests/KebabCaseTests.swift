//
//  KebabCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class KebabCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = "Hello, this is a test for plain-text. Let's see what happens."
        let output = "hello-this-is-a-test-for-plain-text-let-s-see-what-happens"
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .kebabCase), output)
    }

    func testConversionFromFlatCase() {
        let input = "thisisflatcase"
        let output = "thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .kebabCase), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = "THISISUPPERFLATCASE"
        let output = "thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .kebabCase), output)
    }

    func testConversionFromCamelCase() {
        let input = "thisIsCamelCase"
        let output = "this-is-camel-case"
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .kebabCase), output)
    }

    func testConversionFromPascalCase() {
        let input = "ThisIsPascalCase"
        let output = "this-is-pascal-case"
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .kebabCase), output)
    }

    func testConversionFromSnakeCase() {
        let input = "this_is_snake_case"
        let output = "this-is-snake-case"
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .kebabCase), output)
    }

    func testConversionFromMacroCase() {
        let input = "THIS_IS_MACRO_CASE"
        let output = "this-is-macro-case"
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .kebabCase), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = "this_Is_Camel_Snake_Case"
        let output = "this-is-camel-snake-case"
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .kebabCase), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = "This_Is_Pascal_Snake_Case"
        let output = "this-is-pascal-snake-case"
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .kebabCase), output)
    }

    func testConversionFromKebabCase() {
        let input = "this-is-kebab-case"
        let output = "this-is-kebab-case"
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .kebabCase), output)
    }

    func testConversionFromTrainCase() {
        let input = "This-Is-Train-Case"
        let output = "this-is-train-case"
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .kebabCase), output)
    }

    func testConversionFromCobolCase() {
        let input = "THIS-IS-COBOL-CASE"
        let output = "this-is-cobol-case"
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .kebabCase), output)
    }

    func testConversionFromDonnerCase() {
        let input = "this|is|doner|case"
        let output = "this-is-doner-case"
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .kebabCase), output)
    }
}
