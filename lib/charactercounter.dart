import 'dart:io';

void main() {
  print('=== Character Counter ===');

  print('Enter a string:');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('No input provided!');
    return;
  }

  int vowels = 0, consonants = 0, digits = 0, special = 0;
  String vowelSet = 'aeiouAEIOU';

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (vowelSet.contains(char)) {
      vowels++;
    } else if (RegExp(r'[a-zA-Z]').hasMatch(char)) {
      consonants++;
    } else if (RegExp(r'[0-9]').hasMatch(char)) {
      digits++;
    } else {
      special++;
    }
  }

  print('\nResults:');
  print('Vowels: $vowels');
  print('Consonants: $consonants');
  print('Digits: $digits');
  print('Special Characters: $special');
  print('Total Characters: ${input.length}');
}
