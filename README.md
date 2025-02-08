# String Calculator - Dart/Flutter TDD Kata

A Dart implementation of the String Calculator TDD kata. This project demonstrates Test-Driven Development (TDD) by building a simple calculator that sums numbers from a string input. The calculator handles various edge cases, including custom delimiters, negative numbers, and numbers greater than 1000.

## Features
- **Basic Addition**: Sums numbers separated by commas.
- **Custom Delimiters**: Supports custom delimiters (e.g., `//;\n1;2`).
- **Newline Support**: Handles newline characters (`\n`) as delimiters.
- **Negative Number Handling**: Throws an exception if negative numbers are provided.
- **Ignore Large Numbers**: Ignores numbers greater than 1000.
- **Command-Line Interface (CLI)**: Includes a CLI for interactive usage.

## Getting Started

### Prerequisites
Ensure you have Dart installed. Download it from [dart.dev](https://dart.dev/).

### Installation
Clone the repository:

```bash
git clone https://github.com/Zafar-Iqbal-Khan/string_calculator
cd string-calculator-dart
```

Install dependencies:

```bash
dart pub get
```

### Running the CLI
To use the String Calculator from the command line:

Run the CLI:

```bash
dart run
```

Enter numbers separated by commas, newlines, or custom delimiters. For example:

```bash
Input: 1,2,3
Result: 6

Input: //;\n1;2;3
Result: 6

Input: 1\n2,3
Result: 6

Input: exit
Goodbye!
```

### Running Tests
To run the unit tests:

```bash
dart test
```

## Project Structure
```plaintext
string-calculator-dart/
├── bin/
│   └── string_calculator.dart       # CLI entry point
├── lib/
│   └── string_calculator.dart # Core StringCalculator class
├── test/
│   └── string_calculator_test.dart # Unit tests
├── pubspec.yaml              # Project dependencies
└── README.md                 # This file
```

## TDD Approach
This project was developed using Test-Driven Development (TDD). The following steps were followed:

1. Write a failing test.
2. Implement the minimum code to pass the test.
3. Refactor the code while ensuring tests still pass.
4. Repeat for each new feature or edge case.

## Examples

### Input & Output Examples
| Input         | Output             |
|--------------|------------------|
| ""           | 0                |
| "1"         | 1                |
| "1,2,3"     | 6                |
| "1\n2,3"    | 6                |
| "//;\n1;2;3" | 6                |
| "1001,2"     | 2                |
| "1,-2,3"     | Throws Exception |

## Contributing
Contributions are welcome! Here’s how you can contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.


## Acknowledgments
- Inspired by the String Calculator TDD Kata.
- Built with Dart and the `test` package.

Enjoy using the String Calculator! If you have any questions or feedback, feel free to open an issue or reach out.

