//
//  KebabCaseConverter.swift
//  
//
//  Created by Eneko Alonso on 1/15/21.
//

import Foundation


/// Convert text to `kebab-case` format.
public struct KebabCaseConverter: MultiWordIdentifierConverter {
    /// Separator used by `kebab-case`
    public let separator = "-"
    let alphanumerics = CharacterSet.alphanumerics

    public init() {}

    /// Convert a given text from a given format.
    /// - Parameters:
    ///   - text: Text to be converted to `kebab-case`
    ///   - identifier: Format the input text is in
    public func convert(text: String, from identifier: MultiWordIdentifier) -> String {
        switch identifier {
        case .camelCase, .PascalCase:
            return convert(plainText: splitByCapitals(text: text).joined(separator: "-"))
        default:
            return convert(plainText: text)
        }
    }

    func convert(plainText: String) -> String {
        var last = ""
        return plainText.unicodeScalars.map { scalar in
            if alphanumerics.contains(scalar) {
                last = String(scalar).lowercased()
            } else if last == separator {
                return "" // prevent consecutive dashes
            } else {
                last = separator
            }
            return last
        }.joined()
    }
}
