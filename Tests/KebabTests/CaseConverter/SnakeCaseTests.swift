//
//  SnakeCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class SnakeCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = plainText
        let output = "hello_this_is_a_test_for_plain_text_let_s_see_what_happens"
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .snake_case), output)
    }

    func testConversionFromFlatCase() {
        let input = flatCaseText
        let output = "thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .snake_case), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = upperFlatCaseText
        let output = "thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .snake_case), output)
    }

    func testConversionFromCamelCase() {
        let input = camelCaseText
        let output = "this_is_camel_case"
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .snake_case), output)
    }

    func testConversionFromPascalCase() {
        let input = pascalCaseText
        let output = "this_is_pascal_case"
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .snake_case), output)
    }

    func testConversionFromSnakeCase() {
        let input = snakeCaseText
        let output = "this_is_snake_case"
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .snake_case), output)
    }

    func testConversionFromMacroCase() {
        let input = macroCaseText
        let output = "this_is_macro_case"
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .snake_case), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = camelSnakeCaseText
        let output = "this_is_camel_snake_case"
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .snake_case), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = pascalSnakeCaseText
        let output = "this_is_pascal_snake_case"
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .snake_case), output)
    }

    func testConversionFromKebabCase() {
        let input = kebabCaseText
        let output = "this_is_kebab_case"
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .snake_case), output)
    }

    func testConversionFromTrainCase() {
        let input = trainCaseText
        let output = "this_is_train_case"
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .snake_case), output)
    }

    func testConversionFromCobolCase() {
        let input = cobolCaseText
        let output = "this_is_cobol_case"
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .snake_case), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .snake_case), output)
    }

    func testConversionFromDonnerCase() {
        let input = donerCaseText
        let output = "this_is_doner_case"
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .snake_case), output)
    }
}
