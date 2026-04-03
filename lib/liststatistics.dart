import 'dart:io';
import 'dart:math';

void main() {
  print('=== List Statistics ===');

  print('How many numbers do you want to enter?');
  int count = int.parse(stdin.readLineSync()!);

  if (count <= 0) {
    print('Please enter a positive count!');
    return;
  }

  List<int> numbers = [];

  print('Enter $count integers:');
  for (int i = 0; i < count; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  // Calculate statistics
  int largest = numbers.reduce(max);
  int smallest = numbers.reduce(min);
  int sum = numbers.reduce((a, b) => a + b);
  double average = sum / count;

  print('\nResults:');
  print('Numbers entered: $numbers');
  print('Largest: $largest');
  print('Smallest: $smallest');
  print('Average: ${average.toStringAsFixed(2)}');
}
