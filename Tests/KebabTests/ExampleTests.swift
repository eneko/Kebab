//
//  CyclicTests.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/16/21.
//

import XCTest
import Kebab

final class CyclicTests: XCTestCase {

    func testReadmeConversionExamples() {
        let con = CaseConverter()

        XCTAssertEqual(
            con.convert(text: "CaseConverter", from: .PascalCase, to: .snake_case),
            "case_converter"
        )
        XCTAssertEqual(
            con.convert(text: "case_converter", from: .snake_case, to: .screamingKebabCase),
            "CASE-CONVERTER"
        )

        XCTAssertEqual(
            con.convert(text: "CaseConverter", from: .PascalCase, to: .flatcase),
            "caseconverter"
        )
        XCTAssertEqual(
            con.convert(text: "caseconverter", from: .flatcase, to: .PascalCase),
            "Caseconverter"
        )

        XCTAssertEqual(
            con.convert(text: "A Title for a 100 Blog Post!", from: .plainText, to: .kebabCase),
            "a-title-for-a-100-blog-post"
        )
        XCTAssertEqual(
            con.convert(text: "Too much $$$ I would say!!", from: .plainText, to: .snake_case),
            "too_much_i_would_say"
        )

        XCTAssertEqual(
            con.convert(text: "this-is-kebab-case", to: .camelCase),
            "thisIsKebabCase"
        )
    }

    func testReadmeDetectionExamples() {
        let detector = CaseDetector()
        XCTAssertEqual(detector.detectCase(in: "this-is-kebab-case"), .kebabCase)
        XCTAssertEqual(detector.detectCase(in: "SOME_CONSTANT"), .MACRO_CASE)
    }

    func testCycle() {
        let input = "thisIsCamelCase"
        let converter = CaseConverter()

        let interim = converter.convert(text: input, from: .camelCase, to: .snake_case)
        let output = converter.convert(text: interim, from: .snake_case, to: .camelCase)

        XCTAssertEqual(output, input)
    }

    func testConvertToPlainText() {
        XCTAssertEqual(CaseConverter().convert(text: plainText, to: .plainText), plainText)
    }
}
