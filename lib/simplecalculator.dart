import 'dart:io';

void main() {
  print('=== Simple Calculator ===');

  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter operator (+, -, *, /, %):');
  String? operator = stdin.readLineSync();

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      print('$num1 + $num2 = $result');
      break;
    case '-':
      result = num1 - num2;
      print('$num1 - $num2 = $result');
      break;
    case '*':
      result = num1 * num2;
      print('$num1 × $num2 = $result');
      break;
    case '/':
      if (num2 == 0) {
        print('✗ Error: Division by zero is not allowed!');
      } else {
        result = num1 / num2;
        print('$num1 ÷ $num2 = ${result.toStringAsFixed(2)}');
      }
      break;
    case '%':
      if (num2 == 0) {
        print('✗ Error: Modulus by zero is not allowed!');
      } else {
        result = num1 % num2;
        print('$num1 % $num2 = $result');
      }
      break;
    default:
      print('✗ Invalid operator! Please use +, -, *, /, or %');
  }
}
