# -ke-bab-> 🍢

A library to convert text between different cases and formats.

```swift
import Kebab

let converter = CaseConverter()
converter.convert(text: "CaseConverter", from: .PascalCase, to: .snake_case) // case_converter
converter.convert(text: "case_converter", from: .snake_case, to: .screamingKebabCase) // CASE-CONVERTER
```

## Supported multiple-word identifier formats

From [Wikipedia](https://en.wikipedia.org/wiki/Naming_convention_(programming)#Examples_of_multiple-word_identifier_formats):

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


### `MultiWordIdentifier`

Multi-word identifier formats are defined mathing their case format where possible:

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

The following aliases are defined for convenience:

```swift
extension MultiWordIdentifier {
    public static let lowerCamelCase = Self.camelCase        // `lowerCamelCase`, equivalent to `camelCase`
    public static let dromedaryCase = Self.camelCase         // `dromedaryCase`, equivalent to `camelCase`
    public static let UpperCamelCase = Self.PascalCase       // `UpperCamelCase`, equivalent to `PascalCase`
    public static let StudlyCase = Self.PascalCase           // `StudlyCase`, equivalent to `PascalCase`
    public static let pothole_case = Self.snake_case         // `pothole_case`, equivalent to `snake_case`
    public static let SCREAMING_SNAKE_CASE = Self.MACRO_CASE // `SCREAMING_SNAKE_CASE`, equivalent to `MACRO_CASE`
    public static let CONSTANT_CASE = Self.MACRO_CASE        // `CONSTANT_CASE`, equivalent to `MACRO_CASE`
    public static let spineCase = Self.kebabCase             // `spine-case`, equivalent to `kebab-case`
    public static let dashCase = Self.kebabCase              // `dash-case`, equivalent to `kebab-case`
    public static let lispCase = Self.kebabCase              // `lisp-case`, equivalent to `kebab-case`
    public static let httpHeaderCase = Self.trainCase        // `Http-Header-Case`, equivalent to `Train-Case`
    public static let screamingKebabCase = Self.cobolCase    // `SCREAMING-KEBAB-CASE`, equivalent to `COBOL-CASE`
    public static let screamingTrainCase = Self.cobolCase    // `SCREAMING-TRAIN-CASE`, equivalent to `COBOL-CASE`
}
```

### Destructive String Conversions

Swift has a `LosslessStringConvertible` protocol, intended to be used for types that
can be represented as a string, without losing any information. This is, we can
convert an entity into a string and back into another entity that would look exactly
like the original.

When converting text cases, we must be aware some of these conversions
cannot be done without losing information. Once words are merged and lowercased or
uppercased, there is no way to separate them without using a dictionary.

The following conversions are destructive:

- Any case to `flatcase`
- Any case to `UPPERFLATCASE`


## Contact

Twitter: [@eneko](https://twitter.com/eneko)

