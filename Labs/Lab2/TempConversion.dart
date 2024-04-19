import 'dart:io';

void main() {
  print("SE-21014, Syeda Umm E Abiha Rizvi");

  stdout.write('Enter temperature value: ');
  double temperature = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Enter temperature unit (C for Celsius, F for Fahrenheit): ');
  String unit = (stdin.readLineSync() ?? '').toUpperCase();

  if (unit == 'C') {
    double fahrenheit = (temperature * 9 / 5) + 32;
    print('$temperature°C is $fahrenheit°F');
  } else if (unit == 'F') {
    double celsius = (temperature - 32) * 5 / 9;
    print('$temperature°F is $celsius°C');
  } else {
    print('Invalid temperature unit. Please enter C for Celsius or F for Fahrenheit.');
  }
}
