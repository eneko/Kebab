//
//  KebabCaseConverter.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/15/21.
//

import Foundation

/// Convert text to `kebab-case` format.
public struct KebabCaseConverter: MultiWordIdentifierConverter {
    /// Separator used by `kebab-case`
    public static let separator: UnicodeScalar = "-"

    public init() {}

    /// Convert a given text from a given format.
    /// - Parameters:
    ///   - text: Text to be converted to `kebab-case`
    ///   - identifier: Format the input text is in
    public func convert(text: String, from identifier: MultiWordIdentifier) -> String {
        switch identifier {
        case .camelCase, .PascalCase:
            return convert(plainText: text.splitByCapitals().joined(separator: String(Self.separator)))
        default:
            return convert(plainText: text)
        }
    }

    public func convert(plainText: String) -> String {
        return plainText
            .replacingCharacters(in: CharacterSet.alphanumerics.inverted, with: Self.separator)
            .split(separator: Character(Self.separator), maxSplits: Int.max, omittingEmptySubsequences: true)
            .joined(separator: String(Self.separator))
            .lowercased()
    }
}
