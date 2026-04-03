import 'dart:io';

void main() {
  print('=== Palindrome Checker ===');

  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);
  int original = number;

  // Reverse the number mathematically
  int reversed = 0;
  while (number > 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number = number ~/ 10;
  }

  print('Original: $original');
  print('Reversed: $reversed');

  if (original == reversed) {
    print('✓ $original is a PALINDROME!');
  } else {
    print('✗ $original is NOT a palindrome');
  }

  // Alternative String method:
  // String str = original.toString();
  // String revStr = str.split('').reversed.join('');
  // if (str == revStr) print('Palindrome!');
}
