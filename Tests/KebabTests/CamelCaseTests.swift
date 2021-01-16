//
//  CamelCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class CamelCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = "Hello, this is a test for plain-text. Let's see what happens."
        let output = "helloThisIsATestForPlainTextLetSSeeWhatHappens"
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .camelCase), output)
    }

    func testConversionFromFlatCase() {
        let input = "thisisflatcase"
        let output = "thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .camelCase), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = "THISISUPPERFLATCASE"
        let output = "thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .camelCase), output)
    }

    func testConversionFromCamelCase() {
        let input = "thisIsCamelCase"
        let output = "thisIsCamelCase"
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .camelCase), output)
    }

    func testConversionFromPascalCase() {
        let input = "ThisIsPascalCase"
        let output = "thisIsPascalCase"
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .camelCase), output)
    }

    func testConversionFromSnakeCase() {
        let input = "this_is_snake_case"
        let output = "thisIsSnakeCase"
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .camelCase), output)
    }

    func testConversionFromMacroCase() {
        let input = "THIS_IS_MACRO_CASE"
        let output = "thisIsMacroCase"
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .camelCase), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = "this_Is_Camel_Snake_Case"
        let output = "thisIsCamelSnakeCase"
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .camelCase), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = "This_Is_Pascal_Snake_Case"
        let output = "thisIsPascalSnakeCase"
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .camelCase), output)
    }

    func testConversionFromKebabCase() {
        let input = "this-is-kebab-case"
        let output = "thisIsKebabCase"
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .camelCase), output)
    }

    func testConversionFromTrainCase() {
        let input = "This-Is-Train-Case"
        let output = "thisIsTrainCase"
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .camelCase), output)
    }

    func testConversionFromCobolCase() {
        let input = "THIS-IS-COBOL-CASE"
        let output = "thisIsCobolCase"
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .camelCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .camelCase), output)
    }

    func testConversionFromDonnerCase() {
        let input = "this|is|doner|case"
        let output = "thisIsDonerCase"
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .camelCase), output)
    }
}
