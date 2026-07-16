//Count how many times a substring (entered by user) appears in a string. E.g. "is" appears 2 times in "This is my bigger string and it is c plus plus string".
import 'dart:io';

void main() {
  // Input the main string
  stdout.write("Enter a string: ");
  String text = stdin.readLineSync()!;

  // Input the substring to search
  stdout.write("Enter the substring: ");
  String sub = stdin.readLineSync()!;

  // Variable to count occurrences
  int count = 0;

  // Check each possible position in the string
  for (int i = 0; i <= text.length - sub.length; i++) {
    // Compare the substring with part of the string
    if (text.substring(i, i + sub.length) == sub) {
      count++;
    }
  }

  // Display the result
  print("\"$sub\" appears $count times.");
}