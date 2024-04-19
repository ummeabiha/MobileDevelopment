import 'dart:io';

void main() {
  print("SE-21014, Syeda Umm E Abiha Rizvi");

  stdout.write('Enter weight in kilograms: ');
  double weight = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Enter height in meters: ');
  double height = double.parse(stdin.readLineSync() ?? '0');

  double bmi = calculateBMI(weight, height);
  print('BMI: $bmi');
}

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}
