//
//  JSONStrategies.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/16/21.
//

import Foundation
import Kebab

// MARK: Encoding Strategies

extension JSONEncoder.KeyEncodingStrategy {
    static let converter = CaseConverter()

    /// Encode keys in `PascalCase` format
    public static var convertToPascalCase: Self {
        .custom { keys in
            let value = converter.convert(text: keys.last!.stringValue,
                                          from: .camelCase,
                                          to: .PascalCase)
            return CustomKey(stringValue: value)
        }
    }

    /// Encode keys in `kebab-case` format
    public static var convertToKebabCase: Self {
        .custom { keys in
            let value = converter.convert(text: keys.last!.stringValue,
                                          from: .camelCase,
                                          to: .kebabCase)
            return CustomKey(stringValue: value)
        }
    }
}

// MARK: Decoding Strategies

extension JSONDecoder.KeyDecodingStrategy {
    static let converter = CaseConverter()

    /// Decode keys from `PascalCase` format
    public static var convertFromPascalCase: Self {
        .custom { keys in
            let value = converter.convert(text: keys.last!.stringValue,
                                          from: .PascalCase,
                                          to: .camelCase)
            return CustomKey(stringValue: value)
        }
    }

    /// Decode keys from `kebab-case` format
    public static var convertFromKebabCase: Self {
        .custom { keys in
            let value = converter.convert(text: keys.last!.stringValue,
                                          from: .kebabCase,
                                          to: .camelCase)
            return CustomKey(stringValue: value)
        }
    }
}

// MARK: Custom Coding Key

struct CustomKey: CodingKey {
    let stringValue: String
    let intValue: Int?

    init(stringValue: String) {
        self.stringValue = stringValue
        intValue = nil
    }

    init(intValue: Int) {
        self.intValue = intValue
        stringValue = String(intValue)
    }
}
