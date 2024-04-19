import 'dart:io';

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");

  var invertedMap = {};
  var originalMap = {
    'name': 'John Doe',
    'age': 30,
    'email': 'johndoe@example.com'
  };
  originalMap.forEach((key, value) {
    invertedMap[value] = key;
  });
  print(invertedMap);
}
