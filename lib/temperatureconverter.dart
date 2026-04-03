import 'dart:io';

void main() {
  print('=== Temperature Converter ===');
  print('1. Celsius to Fahrenheit');
  print('2. Fahrenheit to Celsius');
  print('Enter your choice (1 or 2):');

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print('Enter temperature in Celsius:');
    double celsius = double.parse(stdin.readLineSync()!);
    double fahrenheit = (celsius * 9 / 5) + 32;
    print('$celsius°C = ${fahrenheit.toStringAsFixed(2)}°F');
  } else if (choice == 2) {
    print('Enter temperature in Fahrenheit:');
    double fahrenheit = double.parse(stdin.readLineSync()!);
    double celsius = (fahrenheit - 32) * 5 / 9;
    print('$fahrenheit°F = ${celsius.toStringAsFixed(2)}°C');
  } else {
    print('Invalid choice! Please enter 1 or 2.');
  }
}
