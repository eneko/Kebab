//
//  KebabJSONTests.swift
//  KebabJSONTests
//
//  Created by Eneko Alonso on 1/16/21.
//

import XCTest
import KebabJSON

final class KebabJSONTests: XCTestCase {

    struct Dto: Codable, Equatable {
        let propertyName: String
        let anotherProperty: Int
        let list: [Nested]

        struct Nested: Codable, Equatable {
            let nestedItem: String
        }
    }

    // MARK: Pascal Case

    func testDecodePascalCase() throws {
        let json = """
        {
            "PropertyName": "Property Value",
            "AnotherProperty": 42,
            "List": [
                {
                    "NestedItem": "Forty Two"
                }
            ]
        }
        """

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromPascalCase
        let decoded = try decoder.decode(Dto.self, from: Data(json.utf8))
        XCTAssertEqual(decoded.propertyName, "Property Value")
        XCTAssertEqual(decoded.anotherProperty, 42)
        XCTAssertEqual(decoded.list.first?.nestedItem, "Forty Two")
    }

    func testEncodePascalCase() throws {
        let dto = Dto(propertyName: "hello",
                      anotherProperty: 77,
                      list: [.init(nestedItem: "nested")])

        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToPascalCase
        let encoded = try encoder.encode(dto)

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromPascalCase
        let decoded = try decoder.decode(Dto.self, from: encoded)

        XCTAssertEqual(decoded, dto)
    }

    // MARK: Kebab Case

    func testDecodeKebabCase() throws {
        let json = """
        {
            "property-name": "Property Value",
            "another-property": 42,
            "list": [
                {
                    "nested-item": "Forty Two"
                }
            ]
        }
        """

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromKebabCase
        let decoded = try decoder.decode(Dto.self, from: Data(json.utf8))
        XCTAssertEqual(decoded.propertyName, "Property Value")
        XCTAssertEqual(decoded.anotherProperty, 42)
        XCTAssertEqual(decoded.list.first?.nestedItem, "Forty Two")
    }

    func testEncodeKebabCase() throws {
        let dto = Dto(propertyName: "hello",
                      anotherProperty: 77,
                      list: [.init(nestedItem: "nested")])

        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToKebabCase
        let encoded = try encoder.encode(dto)

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromKebabCase
        let decoded = try decoder.decode(Dto.self, from: encoded)

        XCTAssertEqual(decoded, dto)
    }
}
