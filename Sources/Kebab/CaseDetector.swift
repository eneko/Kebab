//
//  CaseDetector.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/16/21.
//

import Foundation

/// Utility class to detect case format on a given text string.
public struct CaseDetector {

    let lowercaseAndDecimalSet = CharacterSet.lowercaseLetters.union(.decimalDigits)
    let uppercaseAndDecimalSet = CharacterSet.uppercaseLetters.union(.decimalDigits)
    let underscoreSet = CharacterSet(charactersIn: "_")
    let hyphenSet = CharacterSet(charactersIn: "-")
    let pipeSet = CharacterSet(charactersIn: "|")

    public init() {}

    /// Detect case format in a given text string.
    ///
    /// This method relies on character sets to detect the case
    /// used by the input format. It would be simpler to do trial-and-error conversions, but that would be
    /// more expensive (less performant).
    ///
    /// Detection rules when no separator is present:
    /// - Single-word `camelCase`, `snake_case`, `cobol_Snake_Case` will be identified as `flatcase`
    /// - Single-word `COBOL-CASE`, `MACRO_CASE` will be identified as `UPPERFLATCASE`
    /// - Single-word `Train-Case`, `Pascal_Snake_Case` will be identified as `PascalCase`
    ///
    /// - Parameter text: Input text to analyze
    /// - Returns: Case format detected. Falls back to plain-text if no format could be determined.
    public func detectCase(in text: String) -> MultiWordIdentifier {
        if text.isEmpty {
            return .plainText
        }

        if let format = detectFlatVariants(text: text) {
            return format
        }

        if let format = detectCamelPascal(text: text) {
            return format
        }

        if let format = detectSnakeVariants(text: text) {
            return format
        }

        if let format = detectKebabVariats(text: text) {
            return format
        }

        if let format = detectDonerVariants(text: text) {
            return format
        }

        // Fallback to plain-text
        return .plainText
    }

    func detectFlatVariants(text: String) -> MultiWordIdentifier? {
        if text.containsOnlyCharacters(in: lowercaseAndDecimalSet) {
            return .flatcase
        } else if text.containsOnlyCharacters(in: uppercaseAndDecimalSet) {
            return .UPPERFLATCASE
        }
        return nil
    }

    func detectCamelPascal(text: String) -> MultiWordIdentifier? {
        if text.containsOnlyCharacters(in: .alphanumerics) {
            return text.isFirstLetterLowercase ? .camelCase : .PascalCase
        }
        return nil
    }

    func detectSnakeVariants(text: String) -> MultiWordIdentifier? {
        if text.containsOnlyCharacters(in: lowercaseAndDecimalSet.union(underscoreSet)) {
            return .snake_case
        } else if text.containsOnlyCharacters(in: uppercaseAndDecimalSet.union(underscoreSet)) {
            return .MACRO_CASE
        } else if text.containsOnlyCharacters(in: CharacterSet.alphanumerics.union(underscoreSet)) {
            return text.isFirstLetterLowercase ? .camel_Snake_Case : .Pascal_Snake_Case
        }
        return nil
    }

    func detectKebabVariats(text: String) -> MultiWordIdentifier? {
        if text.containsOnlyCharacters(in: lowercaseAndDecimalSet.union(hyphenSet)) {
            return .kebabCase
        } else if text.containsOnlyCharacters(in: uppercaseAndDecimalSet.union(hyphenSet)) {
            return .cobolCase
        } else if text.containsOnlyCharacters(in: CharacterSet.alphanumerics.union(hyphenSet)) {
            return .trainCase
        }
        return nil
    }

    func detectDonerVariants(text: String) -> MultiWordIdentifier? {
        if text.containsOnlyCharacters(in: lowercaseAndDecimalSet.union(pipeSet)) {
            return .donerCase
        }
        return nil
    }
}
