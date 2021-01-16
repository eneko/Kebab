//
//  KebabCaseConverterTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class KebabCaseConverterTests: XCTestCase {

    let converter = KebabCaseConverter()

    func testConversionFromPlainText() {
        let input = "Hello, this is a test for kebab-case. Let's see what happens."
        let output = "hello-this-is-a-test-for-kebab-case-let-s-see-what-happens-"
        XCTAssertEqual(converter.convert(text: input, from: .plainText), output)
    }

    func testConversionFromFlatCase() {
        let input = "thisisflatcase"
        let output = "thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .flatcase), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = "THISISUPPERFLATCASE"
        let output = "thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE), output)
    }

    func testConversionFromCamelCase() {
        let input = "thisIsCamelCase"
        let output = "this-is-camel-case"
        XCTAssertEqual(converter.convert(text: input, from: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase), output)
    }

    func testConversionFromPascalCase() {
        let input = "ThisIsPascalCase"
        let output = "this-is-pascal-case"
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase), output)
    }

    func testConversionFromSnakeCase() {
        let input = "this_is_snake_case"
        let output = "this-is-snake-case"
        XCTAssertEqual(converter.convert(text: input, from: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case), output)
    }

    func testConversionFromMacroCase() {
        let input = "THIS_IS_MACRO_CASE"
        let output = "this-is-macro-case"
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = "this_Is_Camel_Snake_Case"
        let output = "this-is-camel-snake-case"
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = "This_Is_Pascal_Snake_Case"
        let output = "this-is-pascal-snake-case"
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case), output)
    }

    func testConversionFromKebabCase() {
        let input = "this-is-kebab-case"
        let output = "this-is-kebab-case"
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase), output)
    }

    func testConversionFromTrainCase() {
        let input = "This-Is-Train-Case"
        let output = "this-is-train-case"
        XCTAssertEqual(converter.convert(text: input, from: .trainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase), output)
    }

    func testConversionFromUpperTrainCase() {
        let input = "THIS-IS-UPPER-TRAIN-CASE"
        let output = "this-is-upper-train-case"
        XCTAssertEqual(converter.convert(text: input, from: .upperTrainCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase), output)
    }

    func testConversionFromDonnerCase() {
        let input = "this|is|doner|case"
        let output = "this-is-doner-case"
        XCTAssertEqual(converter.convert(text: input, from: .donerCase), output)
    }
}
