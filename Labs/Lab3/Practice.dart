import 'dart:io';

void main() {
  var nums = [1, 2, 3, 6, 6, 10];

  //Remove all occurences of an element from a list
  nums.removeWhere((element) => element == 6);

  //Remove element at a particular index
  nums.removeAt(1);

  //if the list is empty, then return true
  print(nums.isEmpty);

  //if the list is not empty, then return true
  print(nums.isNotEmpty);

  print('$nums');
}

