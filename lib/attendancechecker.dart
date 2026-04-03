import 'dart:io';

void main() {
  print('=== Attendance Checker ===');

  print('Enter total classes held:');
  int classesHeld = int.parse(stdin.readLineSync()!);

  print('Enter classes attended:');
  int classesAttended = int.parse(stdin.readLineSync()!);

  // Calculate percentage using double to avoid integer division
  double attendancePercentage = (classesAttended / classesHeld) * 100;

  print('\nAttendance: ${attendancePercentage.toStringAsFixed(2)}%');

  if (attendancePercentage >= 75) {
    print('✓ Student is ALLOWED to sit in the exam.');
  } else {
    print('✗ Student is NOT ALLOWED to sit in the exam.');
  }
}
