import 'dart:io';

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }

  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");
  List<int> nums = [3, 20, 45, 20, 17, 9, 30, 10];

  // Separate prime and non-prime numbers
  List<int> nonPrimeNo = nums.where((element) => !isPrime(element)).toList();
  List<int> primeNo = nums.where((element) => isPrime(element)).toList();

  print('Non-Prime Numbers: $nonPrimeNo, Count: ${nonPrimeNo.length}');
  print('Prime Numbers: $primeNo, Count: ${primeNo.length}');
}
