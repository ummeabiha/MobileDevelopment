import 'dart:io';

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");
  List<int> nums = [100, 20, 45, 20, 10, 90, 30, 10];
  nums.shuffle();
  List<int> num1 = [];
  List<int> num2 = [];

  int len = nums.length;
  int length = len ~/ 2; // Calculate the index for splitting the list

  if (len % 2 == 0) {
    print("List can be divided");
    num1.addAll(nums.sublist(0, length)); // Add the first half to num1
    num2.addAll(nums.sublist(length)); // Add the second half to num2
  } else {
    print("List cannot be divided equally");
  }

  print("Original List: $nums");
  print("First Half (num1): $num1");
  print("Second Half (num2): $num2");
}
