import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    final digits = number.toString().split('');
    return number ==
        digits.fold<num>(
          0,
          (previousValue, value) =>
              previousValue +
              pow(
                int.parse(value),
                digits.length,
              ),
        );
  }
}
