//
//  TrainCaseConverter.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/15/21.
//

import Foundation

/// Convert text to `Train-Case` format.
public struct TrainCaseConverter: MultiWordIdentifierConverter {
    /// Separator used by `Train-Case`
    public static let separator: UnicodeScalar = "-"

    public init() {}

    /// Convert a given text from a given format.
    /// - Parameters:
    ///   - text: Text to be converted to `Train-Case`
    ///   - identifier: Format the input text is in
    public func convert(text: String, from identifier: MultiWordIdentifier) -> String {
        switch identifier {
        case .camelCase, .PascalCase:
            return convert(plainText: text.splitByCapitals().joined(separator: String(Self.separator)))
        default:
            return convert(plainText: text)
        }
    }

    func convert(plainText: String) -> String {
        return plainText
            .replacingCharacters(in: CharacterSet.alphanumerics.inverted, with: Self.separator)
            .split(separator: Character(Self.separator), maxSplits: Int.max, omittingEmptySubsequences: true)
            .map { $0.capitalized }
            .joined(separator: String(Self.separator))
    }
}
