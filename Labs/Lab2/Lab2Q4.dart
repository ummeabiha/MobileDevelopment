import 'dart:io';

void main() {
  print("SE-21014, Syeda Umm E Abiha Rizvi");

  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync() ?? '0');

  if (number < 0) {
    print('Factorial is not defined for negative numbers.');
  } else {
    int factorial = calculateFactorial(number);
    print('Factorial of $number is $factorial');
  }
}

int calculateFactorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calculateFactorial(n - 1);
  }
}
