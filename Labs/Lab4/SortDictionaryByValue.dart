import 'Dart:io';
import 'Dart:collection';

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");
  Map<String, int> unsortedMap = {
    'Maham': 20,
    'Abiha': 18,
    'Hamna': 21,
  };

  Map<String, int> sortedMap = sortMapByValue(unsortedMap);
  print(sortedMap);
}

Map<String, int> sortMapByValue(Map<String, int> map) {
  var sortedKeys = map.keys.toList(growable: false)
    ..sort((a, b) => map[a]!.compareTo(map[b]!));
  var sortedMap = LinkedHashMap<String, int>();
  sortedKeys.forEach((key) {
    sortedMap[key] = map[key]!;
  });
  return sortedMap;
}
