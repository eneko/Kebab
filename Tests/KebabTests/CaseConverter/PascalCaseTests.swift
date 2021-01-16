//
//  PascalCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class PascalCaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = plainText
        let output = "HelloThisIsATestForPlainTextLetSSeeWhatHappens"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .PascalCase), output)
    }

    func testConversionFromFlatCase() {
        let input = flatCaseText
        let output = "Thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .PascalCase), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = upperFlatCaseText
        let output = "Thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .PascalCase), output)
    }

    func testConversionFromCamelCase() {
        let input = camelCaseText
        let output = "ThisIsCamelCase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .PascalCase), output)
    }

    func testConversionFromPascalCase() {
        let input = pascalCaseText
        let output = "ThisIsPascalCase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .PascalCase), output)
    }

    func testConversionFromSnakeCase() {
        let input = snakeCaseText
        let output = "ThisIsSnakeCase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .PascalCase), output)
    }

    func testConversionFromMacroCase() {
        let input = macroCaseText
        let output = "ThisIsMacroCase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .PascalCase), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = camelSnakeCaseText
        let output = "ThisIsCamelSnakeCase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .PascalCase), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = pascalSnakeCaseText
        let output = "ThisIsPascalSnakeCase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .PascalCase), output)
    }

    func testConversionFromKebabCase() {
        let input = kebabCaseText
        let output = "ThisIsKebabCase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .PascalCase), output)
    }

    func testConversionFromTrainCase() {
        let input = trainCaseText
        let output = "ThisIsTrainCase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .PascalCase), output)
    }

    func testConversionFromCobolCase() {
        let input = cobolCaseText
        let output = "ThisIsCobolCase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .PascalCase), output)
    }

    func testConversionFromDonnerCase() {
        let input = donerCaseText
        let output = "ThisIsDonerCase"
        XCTAssertEqual(converter.convert(text: input, to: .PascalCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .PascalCase), output)
    }
}
