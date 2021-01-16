//
//  CaseDetector.swift
//  Kebab
//
//  Created by Eneko Alonso on 1/16/21.
//

import Foundation

/// Utility class to detect case format on a given text string.
public struct CaseDetector {

    public init() {}

    /// Detect case formt in a given text string.
    /// - Parameter text: Input text to analyze
    /// - Returns: Case format detected. Falls back to plain-text if no format could be determined.
    public func detectCase(in text: String) -> MultiWordIdentifier {

        // Fallback to plain-text
        return .plainText
    }
}
