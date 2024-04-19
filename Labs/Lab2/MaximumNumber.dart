import 'dart:io';

void main() {
  print("SE-21014, Syeda Umm E Abiha Rizvi");

  stdout.write('Enter three numbers separated by spaces: ');
  List<String> input = (stdin.readLineSync() ?? '').split(' ');

  if (input.length != 3) {
    print('Invalid input. Please enter three numbers separated by spaces.');
    return;
  }

  List<double> numbers = input.map((str) => double.tryParse(str) ?? 0).toList();
  numbers.sort();

  double max = numbers.last;
  print('Sorted numbers: $numbers');
  print('Maximum number: $max');
}
