import 'dart:io';

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");
  List<String> names = ["abiha", "abiha", "maham", "hamna", "abiha", "maham"];
  stdout.write("Enter a string you want to remove: ");
  String stringToRemove = (stdin.readLineSync() ?? '');

  int count = 0;
  for (int i = 0; i < names.length; i++) {
    if (names[i] == stringToRemove) {
      count++;
      names.removeAt(i);
      i--;
    }
  }

  if (count > 0) {
    print("$stringToRemove removed. It occurred $count time(s)");
  } else {
    print("$stringToRemove not found");
  }

  print("Updated Array: $names");
}
