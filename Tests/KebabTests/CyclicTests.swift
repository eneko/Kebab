//
//  CyclicTests.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/16/21.
//

import XCTest
import Kebab

final class CyclicTests: XCTestCase {

    func testExample() {
        let converter = CaseConverter()

        XCTAssertEqual(converter.convert(text: "CaseConverter", from: .PascalCase, to: .snake_case), "case_converter")
        XCTAssertEqual(converter.convert(text: "case_converter", from: .snake_case, to: .screamingKebabCase), "CASE-CONVERTER")
    }

    func testCycle() {
        let input = "thisIsCamelCase"
        let converter = CaseConverter()

        let interim = converter.convert(text: input, from: .camelCase, to: .snake_case)
        let output = converter.convert(text: interim, from: .snake_case, to: .camelCase)

        XCTAssertEqual(output, input)
    }

}
