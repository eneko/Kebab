# Kebab 🍢

A library to convert text between different cases and formats.

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


### Destructive String Conversions

Swift has a `LosslessStringConvertible` protocol, intended to be used for types that
can be represented as a string, without losing any information. This is, we can
convert an entity into a string and back into another entity that would look exactly
like the original.

When converting text cases, we must be aware some of these conversions
cannot be done without losing information. Once words are merged and lowercased or
uppercased, there is no way to separate them without using a dictionary.

Thus, the following conversions are destructive:

- Any case to `flatcase`
- Any case to `UPPERFLATCASE`


## Contact

Twitter: [@eneko](https://twitter.com/eneko)

