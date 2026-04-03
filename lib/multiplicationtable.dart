import 'dart:io';

void main() {
  print('=== Multiplication Table ===');

  print('Enter a positive integer:');
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print('Please enter a positive number!');
    return;
  }

  print('\nMultiplication Table for $n:');
  print('-' * 20);

  for (int i = 1; i <= 10; i++) {
    print('$n x $i = ${n * i}');
  }

  print('-' * 20);
}
