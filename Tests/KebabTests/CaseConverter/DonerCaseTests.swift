//
//  DonerCaseTests.swift
//  KebabTests
//
//  Created by Eneko Alonso on 1/15/21.
//

import XCTest
import Kebab

final class DonerDaseTests: XCTestCase {

    let converter = CaseConverter()

    func testConversionFromPlainText() {
        let input = plainText
        let output = "hello|this|is|a|test|for|plain|text|let|s|see|what|happens"
        XCTAssertEqual(converter.convert(text: input, from: .plainText, to: .donerCase), output)
    }

    func testConversionFromFlatCase() {
        let input = flatCaseText
        let output = "thisisflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .flatcase, to: .donerCase), output)
    }

    func testConversionFromUpperFlatCase() {
        let input = upperFlatCaseText
        let output = "thisisupperflatcase"
        XCTAssertEqual(converter.convert(text: input, from: .UPPERFLATCASE, to: .donerCase), output)
    }

    func testConversionFromCamelCase() {
        let input = camelCaseText
        let output = "this|is|camel|case"
        XCTAssertEqual(converter.convert(text: input, from: .camelCase, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lowerCamelCase, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dromedaryCase, to: .donerCase), output)
    }

    func testConversionFromPascalCase() {
        let input = pascalCaseText
        let output = "this|is|pascal|case"
        XCTAssertEqual(converter.convert(text: input, from: .PascalCase, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .UpperCamelCase, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .StudlyCase, to: .donerCase), output)
    }

    func testConversionFromSnakeCase() {
        let input = snakeCaseText
        let output = "this|is|snake|case"
        XCTAssertEqual(converter.convert(text: input, from: .snake_case, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .pothole_case, to: .donerCase), output)
    }

    func testConversionFromMacroCase() {
        let input = macroCaseText
        let output = "this|is|macro|case"
        XCTAssertEqual(converter.convert(text: input, from: .MACRO_CASE, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .SCREAMING_SNAKE_CASE, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .CONSTANT_CASE, to: .donerCase), output)
    }

    func testConversionFromCamelSnakeCase() {
        let input = camelSnakeCaseText
        let output = "this|is|camel|snake|case"
        XCTAssertEqual(converter.convert(text: input, from: .camel_Snake_Case, to: .donerCase), output)
    }

    func testConversionFromPascalSnakeCase() {
        let input = pascalSnakeCaseText
        let output = "this|is|pascal|snake|case"
        XCTAssertEqual(converter.convert(text: input, from: .Pascal_Snake_Case, to: .donerCase), output)
    }

    func testConversionFromKebabCase() {
        let input = kebabCaseText
        let output = "this|is|kebab|case"
        XCTAssertEqual(converter.convert(text: input, from: .kebabCase, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .spineCase, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .dashCase, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .lispCase, to: .donerCase), output)
    }

    func testConversionFromTrainCase() {
        let input = trainCaseText
        let output = "this|is|train|case"
        XCTAssertEqual(converter.convert(text: input, from: .trainCase, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .httpHeaderCase, to: .donerCase), output)
    }

    func testConversionFromCobolCase() {
        let input = cobolCaseText
        let output = "this|is|cobol|case"
        XCTAssertEqual(converter.convert(text: input, from: .cobolCase, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingTrainCase, to: .donerCase), output)
        XCTAssertEqual(converter.convert(text: input, from: .screamingKebabCase, to: .donerCase), output)
    }

    func testConversionFromDonnerCase() {
        let input = donerCaseText
        let output = "this|is|doner|case"
        XCTAssertEqual(converter.convert(text: input, from: .donerCase, to: .donerCase), output)
    }
}
