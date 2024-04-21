import 'Dart:io';

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");
  List<String> keys = ['student1', 'student2', 'student'];
  List<String> values = ['Abiha', 'Maham', 'Hamna'];

  Map<String, String> combinedDict = combineListsIntoDictionary(keys, values);
  print(combinedDict);
}

Map<String, String> combineListsIntoDictionary(
    List<String> keys, List<String> values) {
  Map<String, String> combinedDict = {};
  for (int i = 0; i < keys.length; i++) {
    combinedDict[keys[i]] = values[i];
  }
  return combinedDict;
}
