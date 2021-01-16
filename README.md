![Unit Test](https://github.com/eneko/Kebab/workflows/Unit%20Test/badge.svg?branch=main)
![Swift 5.0](https://img.shields.io/badge/Swift_Version-5.0-orange.svg?style=flat&logo=Swift)
![Linux Compatible](https://img.shields.io/badge/Linux-compatible-blue.svg?style=flat&logo=Linux)
[![Twitter @eneko](https://img.shields.io/badge/Twitter-@eneko-blue.svg?style=flat&logo=Twitter)](https://twitter.com/eneko)

# -ke-bab-> 🍢

A library to convert text between different cases and formats.

```swift
import Kebab

let con = CaseConverter()
con.convert(text: "CaseConverter", from: .PascalCase, to: .snake_case) // case_converter
con.convert(text: "case_converter", from: .snake_case, to: .screamingKebabCase) // CASE-CONVERTER
```

## Supported multiple-word identifier formats

The following formats from Wikipedia [examples of multi-word identifier formats](https://en.wikipedia.org/wiki/Naming_convention_(programming)#Examples_of_multiple-word_identifier_formats)
are supported by `Kebab`:

| Formatting | Name(s)                                         |
| ---------- | ----------------------------------------------- |
| twowords   | flat case                                       |
| TWOWORDS   | upper flat case                                 |
| twoWords   | (lower) camelCase, dromedaryCase                |
| TwoWords   | PascalCase, Upper Camel Case, StudlyCase        |
| two_words  | snake_case, pothole_case                        |
| TWO_WORDS  | SCREAMING_SNAKE_CASE, MACRO_CASE, CONSTANT_CASE |
| two_Words  | camel_Snake_Case                                |
| Two_Words  | Pascal_Snake_Case                               |
| two-words  | kebab-case, dash-case, lisp-case                |
| two\|words | doner\|case                                     |
| TWO-WORDS  | TRAIN-CASE, COBOL-CASE, SCREAMING-KEBAB-CASE    |
| Two-Words  | Train-Case, HTTP-Header-Case                    |


### Multi-word Identifier

`MultiwordIdentifier` defines input and output conversion formats. 
Enum cases are defined mathing their case format where possible:

```swift
public enum MultiWordIdentifier {
    case flatcase              // flatcase
    case UPPERFLATCASE         // UPPERFLATCASE
    case camelCase             // camelCase
    case PascalCase            // PascalCase
    case snake_case            // snake_case
    case MACRO_CASE            // MACRO_CASE
    case camel_Snake_Case      // camel_Snake_Case
    case Pascal_Snake_Case     // Pascal_Snake_Case
    case kebabCase             // kebak-case
    case trainCase             // Train-Case
    case cobolCase             // COBOL-CASE
    case donerCase             // doner|case
}
```

### Synonyms / Aliases 

The following aliases are also defined for convenience:

```swift
extension MultiWordIdentifier {
    public static let lowerCamelCase = Self.camelCase        // lowerCamelCase
    public static let dromedaryCase = Self.camelCase         // dromedaryCase
    public static let UpperCamelCase = Self.PascalCase       // UpperCamelCase
    public static let StudlyCase = Self.PascalCase           // StudlyCase
    public static let pothole_case = Self.snake_case         // pothole_case
    public static let SCREAMING_SNAKE_CASE = Self.MACRO_CASE // SCREAMING_SNAKE_CASE
    public static let CONSTANT_CASE = Self.MACRO_CASE        // CONSTANT_CASE
    public static let spineCase = Self.kebabCase             // spine-case
    public static let dashCase = Self.kebabCase              // dash-case
    public static let lispCase = Self.kebabCase              // lisp-case
    public static let httpHeaderCase = Self.trainCase        // Http-Header-Case
    public static let screamingKebabCase = Self.cobolCase    // SCREAMING-KEBAB-CASE
    public static let screamingTrainCase = Self.cobolCase    // SCREAMING-TRAIN-CASE
}
```

## Case Converter

`CaseConverter` is the core of this library, and allows converting between all the formats
listed above. Note that converting to `flastcase` or `UPPERFLATCASE` formats is non-reversible.

`CaseConverter` can also take plain text as input. This process will replace any 
non-alpanumeric characters with the proper separator (or no separator) depending on the format.

Consecutive separators are removed.



## Contact

Twitter: [@eneko](https://twitter.com/eneko)

