import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  test('empty string should return 0', () {
    expect(StringCalculator.add(''), 0);
  });


  test('single number should return the number', () {
  expect(StringCalculator.add('1'), 1);
  expect(StringCalculator.add('5'), 5);
});

test('two numbers should return their sum', () {
  expect(StringCalculator.add('1,2'), 3);
  expect(StringCalculator.add('10,20'), 30);
});

test('handle newlines as delimiters', () {
  expect(StringCalculator.add('1\n2,3'), 6);
});

test('handle custom delimiters', () {
  expect(StringCalculator.add('//;\n1;2'), 3);
  expect(StringCalculator.add('//|\n1|2|3'), 6);
});

test('throw exception for negative numbers', () {
  expect(() => StringCalculator.add('1,-2,3'), throwsA(isA<FormatException>()));
});

test('ignore numbers greater than 1000', () {
  expect(StringCalculator.add('2,1001,6'), 8);
});
}