import 'dart:io';

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");
  stdout.write("Enter numbers separated by space: ");
  List<String> input = (stdin.readLineSync() ?? '').split(' ');
  List<double> numbers = input.map((str) => double.tryParse(str) ?? 0).toList();
  List<double> squares=[];
  numbers.removeWhere((number)=>number<0);
  for (int i=0; i< numbers.length; i++){
    squares.add(numbers[i]*numbers[i]);
  }
  print(squares);
}