import 'dart:io';

void main() {
  print("SE-21014, Syeda Umm E Abiha Rizvi");
  stdout.write('Enter a string: ');
  String input = stdin.readLineSync() ?? '';
  String reversed = reverseString(input);
  print('Reversed string: $reversed');
}

String reverseString(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}
