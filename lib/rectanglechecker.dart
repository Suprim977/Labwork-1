import 'dart:io';

void main() {
  print('=== Rectangle/Square Checker ===');

  // Take length input
  print('Enter length:');
  double length = double.parse(stdin.readLineSync()!);

  // Take breadth input
  print('Enter breadth:');
  double breadth = double.parse(stdin.readLineSync()!);

  // Check if it's a square
  if (length == breadth) {
    print('✓ It is a Square!');
  } else {
    print('✗ It is a Rectangle (not a square)');
  }
}
