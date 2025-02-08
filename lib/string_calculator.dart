class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    var nums = numbers.split(RegExp(r'[,\n]')).map((n) => int.parse(n)).toList();
    return nums.reduce((sum, n) => sum + n);
  }
}