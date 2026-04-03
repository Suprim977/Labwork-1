import 'dart:io';

void main() {
  print('=== Leap Year Checker ===');

  print('Enter a year:');
  int year = int.parse(stdin.readLineSync()!);

  bool isLeapYear;

  // Leap year logic:
  // Divisible by 4 AND (not divisible by 100 OR divisible by 400)
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        isLeapYear = true;
      } else {
        isLeapYear = false;
      }
    } else {
      isLeapYear = true;
    }
  } else {
    isLeapYear = false;
  }

  // Alternative one-liner:
  // bool isLeapYear = (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0);

  if (isLeapYear) {
    print('✓ $year is a LEAP YEAR! (366 days)');
  } else {
    print('✗ $year is NOT a leap year. (365 days)');
  }
}
