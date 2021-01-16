//
//  MultiWordIdentifier.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/15/21.
//

import Foundation

public enum MultiWordIdentifier {
    /// Indicates the text is plain, and can contain spaces and any other symbols.
    case plainText

    /// `flatcase` format, all lowercase without separators. This format is non-reversible.
    case flatcase

    /// `UPPERFLATCASE` format, all uppercase without separators. This format is non-reversible.
    case UPPERFLATCASE

    /// `camelCase` format, words are capitalized, except for the first one. No separators.
    case camelCase

    /// `camelCase` format, words are capitalized. No separators.
    case PascalCase

    /// `snake_case` format, words are lowercased, separated by an underscore.
    case snake_case

    /// `MACRO_CASE` format, words are uppercased, separated by an underscore.
    case MACRO_CASE

    /// `camel_Snake_Case` format, words are capitalized, except for the first one. Separated by an underscore.
    case camel_Snake_Case

    /// `Pascal_Snake_Case` format, words are capitalized. Separated by an underscore.
    case Pascal_Snake_Case

    /// `kebab-case` format, words are lowercased, separated by a hyphen.
    case kebabCase

    /// `Train-Case` format, words are capitalized, separated by a hyphen.
    case trainCase

    /// `UPPER-TRAIN-CASE` format, words are uppercased, separated by a hyphen.
    case upperTrainCase

    /// `doner|case` format, words are lowercased, separated by a pipe.
    case donerCase
}

// MARK: Synonyms

extension MultiWordIdentifier {
    /// `lowerCamelCase`, equivalent to `camelCase`
    public static let lowerCamelCase = Self.camelCase

    /// `dromedaryCase`, equivalent to `camelCase`
    public static let dromedaryCase = Self.camelCase

    /// `UpperCamelCase`, equivalent to `PascalCase`
    public static let UpperCamelCase = Self.PascalCase

    /// `StudlyCase`, equivalent to `PascalCase`
    public static let StudlyCase = Self.PascalCase

    /// `pothole_case`, equivalent to `snake_case`
    public static let pothole_case = Self.snake_case

    /// `SCREAMING_SNAKE_CASE`, equivalent to `MACRO_CASE`
    public static let SCREAMING_SNAKE_CASE = Self.MACRO_CASE
    /// `CONSTANT_CASE`, equivalent to `MACRO_CASE`

    public static let CONSTANT_CASE = Self.MACRO_CASE
    /// `spine-case`, equivalent to `kebab-case`

    public static let spineCase = Self.kebabCase
    /// `dash-case`, equivalent to `kebab-case`

    public static let dashCase = Self.kebabCase
    /// `lisp-case`, equivalent to `kebab-case`

    public static let lispCase = Self.kebabCase
    /// `Http-Header-Case`, equivalent to `Train-Case`

    public static let httpHeaderCase = Self.trainCase
    /// `COBOL-CASE`, equivalent to `UPPER-TRAIN-CASE`

    public static let cobolCase = Self.upperTrainCase

    /// `SCREAMING-KEBAB-CASE`, equivalent to `UPPER-TRAIN-CASE`
    public static let screamingKebabCase = Self.upperTrainCase
}
