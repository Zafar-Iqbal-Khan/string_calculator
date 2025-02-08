import 'dart:io';
import 'package:string_calculator/string_calculator.dart';

void main() {
  print("Enter numbers separated by commas or newlines (press Enter after each line, and Ctrl+Z to finish):");

  // Read multiple lines of input
  String input = '';
  while (true) {
    String? line = stdin.readLineSync();
    if (line == null || line.isEmpty) break;
    input += (input.isEmpty ? '' : '\n') + line;
  }

  try {
    int result = StringCalculator.add(input);
    print("Result: $result");
  } catch (e) {
    print("Error: Invalid input. Please enter valid numbers.");
  }
}
