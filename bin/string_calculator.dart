// import 'dart:io';
// import 'package:string_calculator/string_calculator.dart';

// void main() {
//   print("Enter numbers separated by commas or newlines (press Enter after each line, and Ctrl+Z to finish):");
//   print("To use a custom delimiter, enter in this format: `//[delimiter]\\n[numbers]` (e.g., `//;\n1;2;3`).");

//   String input = '';
//   while (true) {
//     String? line = stdin.readLineSync();
//     if (line == null || line.isEmpty) break;
//     input += (input.isEmpty ? '' : '\n') + line;
//   }

//   try {
//     int result = StringCalculator.add(input);
//     print("Result: $result");
//   } on FormatException catch (e) {
//     print("Error: ${e.message}");
//   } catch (e) {
//     print("Error: Invalid input. Please enter valid numbers.");
//   }
// }



import 'dart:io';
import 'package:string_calculator/string_calculator.dart';

void main(List<String> args) {
  print('String Calculator');
  print('Enter numbers separated by commas, newlines, or custom delimiters (e.g., "//;\n1;2").');
  print('Type "exit" to quit.\n');

  while (true) {
    stdout.write('Input: ');
    final input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'exit') {
      print('Goodbye!');
      break;
    }

    try {
      // Replace literal "\n" with actual newline characters
      final processedInput = input.replaceAll(r'\n', '\n');
      final result = StringCalculator.add(processedInput);
      print('Result: $result\n');
    } on FormatException catch (e) {
      print('Error: ${e.message}\n');
    } catch (e) {
      print('Unexpected error: $e\n');
    }
  }
}