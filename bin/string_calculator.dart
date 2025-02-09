

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