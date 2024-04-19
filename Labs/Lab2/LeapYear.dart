import 'dart:io';

void main() {
  print("SE-21014, Syeda Umm E Abiha Rizvi");

  stdout.write('Enter a year: ');
  int year = int.parse(stdin.readLineSync() ?? '0');

  if (year % 4 == 0) {
    if (year % 100 != 0 || (year % 100 == 0 && year % 400 == 0)) {
      print('$year is a leap year.');
    } else {
      print('$year is not a leap year.');
    }
  } else {
    print('$year is not a leap year.');
  }
}
