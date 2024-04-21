import 'Dart:io';

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");
  List<String> words = [
    'abiha',
    'maham',
    'hamna',
    'ammar',
    'sara',
    'meerab',
    'arsa',
    'hibaa',
  ];
  Map<String, List<String>> groupedAnagrams = groupAnagrams(words);
  groupedAnagrams.forEach((key, value) {
    if (value.length > 1) {
      print('Anagrams are: ${value.join(' and ')}');
    }
  });
}

Map<String, List<String>> groupAnagrams(List<String> words) {
  Map<String, List<String>> groupedAnagrams = {};
  for (var word in words) {
    var sortedWord = String.fromCharCodes(word.runes.toList()..sort());
    if (!groupedAnagrams.containsKey(sortedWord)) {
      groupedAnagrams[sortedWord] = [];
    }
    groupedAnagrams[sortedWord]!.add(word);
  }
  return groupedAnagrams;
}
