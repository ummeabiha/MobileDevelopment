import 'dart:math';
import 'dart:io';

void main() {
  print("SE-21014, Syeda Umm E Abiha Rizvi");

  stdout.write('Enter coefficient a: ');
  double a = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Enter coefficient b: ');
  double b = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Enter coefficient c: ');
  double c = double.parse(stdin.readLineSync() ?? '0');

  calculateRoots(a, b, c);
}

void calculateRoots(double a, double b, double c) {
  double discriminant = b * b - 4 * a * c;

  if (discriminant > 0) {
    double root1 = (-b + sqrt(discriminant)) / (2 * a);
    double root2 = (-b - sqrt(discriminant)) / (2 * a);
    print('Root 1: $root1');
    print('Root 2: $root2');
  } else if (discriminant == 0) {
    double root = -b / (2 * a);
    print('Root: $root');
  } else {
    print('No real roots exist.');
  }
}
