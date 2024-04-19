import 'dart:io';

void main() {
  print("SE,21014, Syeda Umm E Abiha Rizvi");

  stdout.write('Enter the number of terms in the Fibonacci series: ');
  int numTerms = int.parse(stdin.readLineSync() ?? '0');

  if (numTerms <= 0) {
    print('Number of terms should be positive.');
  } else {
    print('Fibonacci series:');
    for (int i = 0; i < numTerms; i++) {
      stdout.write('${fibonacci(i)} ');
    }
    print('');
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
