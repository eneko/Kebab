//
//  CamelSnakeCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class CamelSnakeCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = plainText
        let output = "hello_This_Is_A_Test_For_Plain_Text_Let_S_See_What_Happens"
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .camel_Snake_Case), output)
    }

    func testConversionFromFlatCase() {
        let input = flatCaseText
        let output = "thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .camel_Snake_Case), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = upperFlatCaseText
        let output = "thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .camel_Snake_Case), output)
    }

    func testConversionFromCamelCase() {
        let input = camelCaseText
        let output = "this_Is_Camel_Case"
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .camel_Snake_Case), output)
    }

    func testConversionFromPascalCase() {
        let input = pascalCaseText
        let output = "this_Is_Pascal_Case"
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .camel_Snake_Case), output)
    }

    func testConversionFromSnakeCase() {
        let input = snakeCaseText
        let output = "this_Is_Snake_Case"
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .camel_Snake_Case), output)
    }

    func testConversionFromMacroCase() {
        let input = macroCaseText
        let output = "this_Is_Macro_Case"
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .camel_Snake_Case), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = camelSnakeCaseText
        let output = "this_Is_Camel_Snake_Case"
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .camel_Snake_Case), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = pascalSnakeCaseText
        let output = "this_Is_Pascal_Snake_Case"
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .camel_Snake_Case), output)
    }

    func testConversionFromKebabCase() {
        let input = kebabCaseText
        let output = "this_Is_Kebab_Case"
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .camel_Snake_Case), output)
    }

    func testConversionFromTrainCase() {
        let input = trainCaseText
        let output = "this_Is_Train_Case"
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .camel_Snake_Case), output)
    }

    func testConversionFromCobolCase() {
        let input = cobolCaseText
        let output = "this_Is_Cobol_Case"
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .camel_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .camel_Snake_Case), output)
    }

    func testConversionFromDonnerCase() {
        let input = donerCaseText
        let output = "this_Is_Doner_Case"
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .camel_Snake_Case), output)
    }
}
