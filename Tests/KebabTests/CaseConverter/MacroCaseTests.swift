//
//  MacroCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class MacroCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = plainText
        let output = "HELLO_THIS_IS_A_TEST_FOR_PLAIN_TEXT_LET_S_SEE_WHAT_HAPPENS"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .MACRO_CASE), output)
    }

    func testConversionFromFlatCase() {
        let input = flatCaseText
        let output = "THISISFLATCASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .MACRO_CASE), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = upperFlatCaseText
        let output = "THISISUPPERFLATCASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .MACRO_CASE), output)
    }

    func testConversionFromCamelCase() {
        let input = camelCaseText
        let output = "THIS_IS_CAMEL_CASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .MACRO_CASE), output)
    }

    func testConversionFromPascalCase() {
        let input = pascalCaseText
        let output = "THIS_IS_PASCAL_CASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .MACRO_CASE), output)
    }

    func testConversionFromSnakeCase() {
        let input = snakeCaseText
        let output = "THIS_IS_SNAKE_CASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .MACRO_CASE), output)
    }

    func testConversionFromMacroCase() {
        let input = macroCaseText
        let output = "THIS_IS_MACRO_CASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .MACRO_CASE), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = camelSnakeCaseText
        let output = "THIS_IS_CAMEL_SNAKE_CASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .MACRO_CASE), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = pascalSnakeCaseText
        let output = "THIS_IS_PASCAL_SNAKE_CASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .MACRO_CASE), output)
    }

    func testConversionFromKebabCase() {
        let input = kebabCaseText
        let output = "THIS_IS_KEBAB_CASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .MACRO_CASE), output)
    }

    func testConversionFromTrainCase() {
        let input = trainCaseText
        let output = "THIS_IS_TRAIN_CASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .MACRO_CASE), output)
    }

    func testConversionFromCobolCase() {
        let input = cobolCaseText
        let output = "THIS_IS_COBOL_CASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .MACRO_CASE), output)
    }

    func testConversionFromDonnerCase() {
        let input = donerCaseText
        let output = "THIS_IS_DONER_CASE"
        XCTAssertEqual(converter.convert(text: input, to: .MACRO_CASE), output)
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .MACRO_CASE), output)
    }
}
