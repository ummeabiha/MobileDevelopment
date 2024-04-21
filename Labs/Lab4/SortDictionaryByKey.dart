import 'Dart:io';

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");
  Map<String, int> unsortedMap = {
    'Maham': 20,
    'Abiha': 20,
    'Hamna': 21,
  };

  Map<String, int> sortedMap = sortMapByKey(unsortedMap);
  print(sortedMap);
}

Map<String, int> sortMapByKey(Map<String, int> map) {
  var sortedKeys = map.keys.toList()..sort();
  var sortedMap = Map<String, int>();
  for (var key in sortedKeys) {
    sortedMap[key] = map[key]!;
  }
  return sortedMap;
}
