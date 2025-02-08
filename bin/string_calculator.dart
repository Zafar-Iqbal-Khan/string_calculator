import 'dart:io';
import 'package:string_calculator/string_calculator.dart';

void main() {
  print("Enter a string of numbers separated by commas:");
  String? input = stdin.readLineSync();

  if (input != null) {
    try {
      int result = StringCalculator.add(input);
      print("Result: $result");
    } catch (e) {
      print("Error: ${e.toString()}");
    }
  } else {
    print("No input provided.");
  }
}
