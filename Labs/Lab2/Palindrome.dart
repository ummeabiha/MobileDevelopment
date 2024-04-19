import 'dart:io';

void main() {
  print("SE-21014, Syeda Umm E Abiha Rizvi");

  stdout.write('Enter a number: ');
  int number = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  if (isPalindrome(number)) {
    print('$number is a palindrome.');
  } else {
    print('$number is not a palindrome.');
  }
}

bool isPalindrome(int number) {
  String numberStr = number.toString();
  String reversed = numberStr.split('').reversed.join('');
  return numberStr == reversed;
}
