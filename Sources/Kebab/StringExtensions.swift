//
//  StringExtensions.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/15/21.
//

import Foundation

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
