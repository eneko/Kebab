//
//  PascalSnakeCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class PascalSnakeCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = plainText
        let output = "Hello_This_Is_A_Test_For_Plain_Text_Let_S_See_What_Happens"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromFlatCase() {
        let input = flatCaseText
        let output = "Thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = upperFlatCaseText
        let output = "Thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromCamelCase() {
        let input = camelCaseText
        let output = "This_Is_Camel_Case"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromPascalCase() {
        let input = pascalCaseText
        let output = "This_Is_Pascal_Case"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromSnakeCase() {
        let input = snakeCaseText
        let output = "This_Is_Snake_Case"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromMacroCase() {
        let input = macroCaseText
        let output = "This_Is_Macro_Case"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = camelSnakeCaseText
        let output = "This_Is_Camel_Snake_Case"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = pascalSnakeCaseText
        let output = "This_Is_Pascal_Snake_Case"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromKebabCase() {
        let input = kebabCaseText
        let output = "This_Is_Kebab_Case"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromTrainCase() {
        let input = trainCaseText
        let output = "This_Is_Train_Case"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromCobolCase() {
        let input = cobolCaseText
        let output = "This_Is_Cobol_Case"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .Pascal_Snake_Case), output)
    }

    func testConversionFromDonnerCase() {
        let input = donerCaseText
        let output = "This_Is_Doner_Case"
        XCTAssertEqual(converter.convert(text: input, to: .Pascal_Snake_Case), output)
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .Pascal_Snake_Case), output)
    }
}
