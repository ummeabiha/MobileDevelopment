import 'Dart:io';

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");
  List<List<int>> nestedLists = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  List<int> flatList = [];
  nestedLists.forEach(
      (list) => flatList.addAll(list)); //Adding each element of sublisted
  //nested list to flat list
  int combinedInteger = int.parse(flatList.join(''));

  print('Nested Lists: $nestedLists');
  print("Flat List: $flatList");
  print("Combined Integer: $combinedInteger");
}
