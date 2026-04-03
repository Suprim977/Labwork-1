import 'dart:io';

void main() {
  print('=== Student Grading System ===');

  print('Enter marks (0-100):');
  double marks = double.parse(stdin.readLineSync()!);

  String grade;

  if (marks < 25) {
    grade = 'F';
  } else if (marks < 45) {
    grade = 'E';
  } else if (marks < 50) {
    grade = 'D';
  } else if (marks < 60) {
    grade = 'C';
  } else if (marks < 80) {
    grade = 'B';
  } else {
    grade = 'A';
  }

  print('Grade: $grade');
}
