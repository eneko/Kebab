//
//  MultiWordIdentifierConverter.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/15/21.
//

import Foundation

/// Defines a type that can convert text to a from a given format
public protocol MultiWordIdentifierConverter {
    /// Convert a given text from a given format.
    /// - Parameters:
    ///   - text: Text to be converted
    ///   - identifier: Format the input text is in
    func convert(text: String, from identifier: MultiWordIdentifier) -> String
}

// MARK: Internal String Extensions

extension String {
    func splitByCapitals() -> [String] {
        let capitals = ("A"..."Z")
        var words: [String] = []
        var word: [String] = []
        unicodeScalars.forEach { scalar in
            let letter = String(scalar)
            if capitals.contains(letter) && word.isEmpty == false {
                words.append(word.joined())
                word = []
            }
            word.append(letter)
        }
        words.append(word.joined())
        return words
    }

    func replacingCharacters(in characterSet: CharacterSet, with replacement: UnicodeScalar) -> String {
        let scalars = unicodeScalars.map { characterSet.contains($0) ? replacement : $0 }
        return String(UnicodeScalarView(scalars))
    }

    func lowercasingFirst() -> String {
        return prefix(1).lowercased() + dropFirst()
    }
}
