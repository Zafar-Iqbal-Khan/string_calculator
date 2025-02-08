class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    var delimiter = ',';
    if (numbers.startsWith('//')) {
      var parts = numbers.split('\n');
      delimiter = parts[0].substring(2);
      numbers = parts[1];
    }

    var nums = numbers.split(RegExp('[$delimiter\n]')).map((n) => int.parse(n)).toList();
    var negatives = nums.where((n) => n < 0).toList();

    if (negatives.isNotEmpty) {
      throw FormatException('Negatives not allowed: $negatives');
    }

    return nums.reduce((sum, n) => sum + n);
  }
}