import 'dart:io';

void main() {
  print('=== Number Classifier ===');

  print('Enter an integer:');
  int number = int.parse(stdin.readLineSync()!);

  if (number > 0) {
    print('✓ Positive number');
    if (number % 2 == 0) {
      print('✓ Even number');
    } else {
      print('✓ Odd number');
    }
  } else if (number < 0) {
    print('✓ Negative number');
  } else {
    print('✓ Zero (neither positive nor negative)');
  }
}
