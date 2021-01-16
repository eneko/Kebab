//
//  StringExtensions.swift
//  KebabExtensions
//
//  Created by Eneko Alonso on 1/16/21.
//

import Kebab

// MARK: Public `String` extensions for easy case conversions.

extension String {
    /// Convert the current string to a given case format. Input format default to plain-text.
    /// - Parameter format: Format to convert to
    /// - Returns: converted string with new case format
    public func converted(to format: MultiWordIdentifier) -> String {
        CaseConverter().convert(text: self, to: format)
    }

    /// Convert the current string to a given case format
    /// - Parameter input: Format to convert from
    /// - Parameter output: Format to convert to
    /// - Returns: converted string with new case format
    public func converted(from input: MultiWordIdentifier, to output: MultiWordIdentifier) -> String {
        CaseConverter().convert(text: self, from: input, to: output)
    }

    /// Detect case format on current string
    /// - Returns: Detected case format
    public func detectCase() -> MultiWordIdentifier {
        CaseDetector().detectCase(in: self)
    }
}
