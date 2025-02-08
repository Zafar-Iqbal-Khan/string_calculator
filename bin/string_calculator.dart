import 'dart:io';
import 'package:string_calculator/string_calculator.dart';

void main() {
  print("Enter numbers separated by commas or newlines (press Enter after each line, and Ctrl+D to finish):");
  print("To use a custom delimiter, enter in this format: `//[delimiter]\\n[numbers]` (e.g., `//;\n1;2;3`).");

  String input = '';
  while (true) {
    String? line = stdin.readLineSync();
    if (line == null || line.isEmpty) break;
    input += (input.isEmpty ? '' : '\n') + line;
  }

  try {
    int result = StringCalculator.add(input);
    print("Result: $result");
  } on FormatException catch (e) {
    print("Error: ${e.message}");
  } catch (e) {
    print("Error: Invalid input. Please enter valid numbers.");
  }
}
