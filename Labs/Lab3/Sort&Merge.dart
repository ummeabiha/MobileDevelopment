import 'dart:io';

void sort(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 0; j < list.length - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

List<int> mergeSortedLists(List<int> list1, List<int> list2) {
  List<int> mergedList = [];

  sort(list1);
  sort(list2);

  int i = 0, j = 0;

  //comparing the elements of list1 and list2, to sort them
  while (i < list1.length && j < list2.length) {
    if (list1[i] < list2[j]) {
      mergedList.add(list1[i]);
      i++;
    } else {
      mergedList.add(list2[j]);
      j++;
    }
  }

  //add the remaining elements of list, at the end of mergedList
  while (i < list1.length) {
    mergedList.add(list1[i]);
    i++;
  }
  while (j < list2.length) {
    mergedList.add(list2[j]);
    j++;
  }
  return mergedList;
}

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");
  List<int> list1 = [10, 80, 55, 200, 15, 20, 20, 50];
  List<int> list2 = [2, 4, 6, 8, 1000, -1];
  List<int> mergedList = mergeSortedLists(list1, list2);
  print('Merged List: $mergedList');
}



