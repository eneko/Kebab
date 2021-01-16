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
        let input = plainText
        let output = "hellothisisatestforplaintextletsseewhathappens"
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .flatcase), output)
    }

    func testConversionFromFlatCase() {
        let input = flatCaseText
        let output = "thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .flatcase), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = upperFlatCaseText
        let output = "thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .flatcase), output)
    }

    func testConversionFromCamelCase() {
        let input = camelCaseText
        let output = "thisiscamelcase"
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .flatcase), output)
    }

    func testConversionFromPascalCase() {
        let input = pascalCaseText
        let output = "thisispascalcase"
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .flatcase), output)
    }

    func testConversionFromSnakeCase() {
        let input = snakeCaseText
        let output = "thisissnakecase"
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .flatcase), output)
    }

    func testConversionFromMacroCase() {
        let input = macroCaseText
        let output = "thisismacrocase"
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .flatcase), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = camelSnakeCaseText
        let output = "thisiscamelsnakecase"
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .flatcase), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = pascalSnakeCaseText
        let output = "thisispascalsnakecase"
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .flatcase), output)
    }

    func testConversionFromKebabCase() {
        let input = kebabCaseText
        let output = "thisiskebabcase"
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .flatcase), output)
    }

    func testConversionFromTrainCase() {
        let input = trainCaseText
        let output = "thisistraincase"
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .flatcase), output)
    }

    func testConversionFromCobolCase() {
        let input = cobolCaseText
        let output = "thisiscobolcase"
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .flatcase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .flatcase), output)
    }

    func testConversionFromDonnerCase() {
        let input = donerCaseText
        let output = "thisisdonercase"
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .flatcase), output)
    }
}
