import 'dart:io';

void main() {
  print('=== Fibonacci Series Generator ===');

  print('Enter number of terms:');
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print('Please enter a positive number.');
    return;
  }

  print('\nFibonacci Series up to $n terms:');

  int a = 0, b = 1;

  for (int i = 0; i < n; i++) {
    stdout.write('$a ');
    int next = a + b;
    a = b;
    b = next;
  }
  print(''); // New line at end
}
