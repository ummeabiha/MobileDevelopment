import 'dart:io';

void main() {
  print("SE-21014, Syeda Umm E Abiha Rizvi");

  stdout.write('Enter the principal amount: ');
  double principalAmount = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Enter the rate of interest (in percentage): ');
  double rateOfInterest = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Enter the time period (in years): ');
  int timePeriod = int.parse(stdin.readLineSync() ?? '0');

  // Formula: SI = (P * R * T) / 100
  double simpleInterest = (principalAmount * rateOfInterest * timePeriod) / 100;

  print('Simple Interest: \$${simpleInterest.toStringAsFixed(2)}');
}
