//
//  MultiWordIdentifierConverter.swift
//  
//
//  Created by Eneko Alonso on 1/15/21.
//

import Foundation

/// Defines a type that can convert text to a from a given format
public protocol MultiWordIdentifierConverter {
    /// Separator used by a given format. Might be empty string.
    var separator: String { get }

    /// Convert a given text from a given format.
    /// - Parameters:
    ///   - text: Text to be converted
    ///   - identifier: Format the input text is in
    func convert(text: String, from identifier: MultiWordIdentifier) -> String
}

extension MultiWordIdentifierConverter {
    func splitByCapitals(text: String) -> [String] {
        let capitals = ("A"..."Z")
        var words: [String] = []
        var word: [String] = []
        text.unicodeScalars.forEach { scalar in
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
}
