import 'dart:io';

void main() {
  print('=== Number Reverser ===');

  print('Enter a 4-digit number:');
  int number = int.parse(stdin.readLineSync()!);

  // Method 1: Mathematical approach
  int original = number;
  int reversed = 0;

  while (number > 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number = number ~/ 10;
  }

  print('Original: $original');
  print('Reversed: $reversed');

  // Method 2: String approach (alternative)
  // String reversedStr = original.toString().split('').reversed.join('');
  // print('Reversed (String method): $reversedStr');
}
