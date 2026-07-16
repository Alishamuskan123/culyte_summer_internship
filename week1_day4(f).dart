import 'dart:io';

void main() {
  stdout.write("Enter a character: ");
  String ch = stdin.readLineSync()!.toLowerCase();

  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

  if (vowels.contains(ch)) {
    print("$ch is a Vowel.");
  } else {
    print("$ch is a Consonant.");
  }
}