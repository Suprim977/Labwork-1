import 'dart:io';

// Iterative approach
int factorialIterative(int n) {
  if (n < 0) return -1; // Error case
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}

// Recursive approach
int factorialRecursive(int n) {
  if (n < 0) return -1; // Error case
  if (n == 0 || n == 1) return 1;
  return n * factorialRecursive(n - 1);
}

void main() {
  print('=== Factorial Calculator ===');

  print('Enter a non-negative integer:');
  int number = int.parse(stdin.readLineSync()!);

  if (number < 0) {
    print('Factorial not defined for negative numbers!');
    return;
  }

  int resultIter = factorialIterative(number);
  int resultRec = factorialRecursive(number);

  print('\nResults:');
  print('Iterative: $number! = $resultIter');
  print('Recursive: $number! = $resultRec');

  if (resultIter == resultRec) {
    print('✓ Both methods produce the same result!');
  } else {
    print('✗ Mismatch in results!');
  }
}
