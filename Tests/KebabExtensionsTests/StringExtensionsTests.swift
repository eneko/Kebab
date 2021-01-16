//
//  StringExtensionsTests.swift
//  KebabExtensions
//
//  Created by Eneko Alonso on 1/16/21.
//

import XCTest
import Kebab
import KebabExtensions

final class StringExtensionsTests: XCTestCase {

    let text = "This is some text, for string extensions tests."

    func testConversion() {
        let converter = CaseConverter()

        for format in MultiWordIdentifier.allCases {
            XCTAssertEqual(
                text.converted(to: format),
                converter.convert(text: text, to: format)
            )
            XCTAssertEqual(
                text.converted(from: .plainText, to: format),
                converter.convert(text: text, from: .plainText, to: format)
            )
        }
    }

    func testDetection() {
        XCTAssertEqual(text.detectCase(), .plainText)
    }

    func testReadmeExamples() {
        XCTAssertEqual("Some-Http-Header".converted(to: .donerCase), "some|http|header")
        XCTAssertEqual("GoodOldPascalCase".converted(to: .SCREAMING_SNAKE_CASE), "GOOD_OLD_PASCAL_CASE")

        XCTAssertEqual("This_Is_Pascal_Snake_Case".detectCase(), .Pascal_Snake_Case)
    }
}
