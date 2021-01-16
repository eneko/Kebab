//
//  CaseConverter.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/15/21.
//

import Foundation

/// Convert text from one case to another
public struct CaseConverter {

    public init() {}

    /// Convert a given text from a given format.
    /// - Parameters:
    ///   - text: Text to be converted to `camelCase`
    ///   - input: Format to convert from
    ///   - output: Format to convert to
    /// - Returns: Converted text
    public func convert(text: String, from input: MultiWordIdentifier, to output: MultiWordIdentifier) -> String {
        if output == input || output == .plainText {
            return text
        }

        var text = text

        // Split words by capitals if needed
        if input == .camelCase || input == .PascalCase {
            text = text.splitByCapitals().joined(separator: "-")
        }

        // Replace non-alphanumeric characters, removing consecutive separators, and applying word transforms
        text = text
            .replacingCharacters(in: CharacterSet.alphanumerics.inverted, with: "-")
            .split(separator: "-", maxSplits: Int.max, omittingEmptySubsequences: true)
            .map(output.wordTransform)
            .joined(separator: output.separator)

        // Lowercase first letter if needed
        if output == .camelCase || output == .camel_Snake_Case {
            text = text.lowercasingFirst()
        }

        return text
    }
}
