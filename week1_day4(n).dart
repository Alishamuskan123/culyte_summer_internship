//Take a string as input: convert uppercase characters to lowercase and vice versa
import 'dart:io';

void main() {
  // Ask the user to enter a string
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;

  // Variable to store the converted string
  String result = "";

  // Loop through each character
  for (int i = 0; i < input.length; i++) {
    String ch = input[i];

    // Convert uppercase to lowercase
    if (ch == ch.toUpperCase() && ch != ch.toLowerCase()) {
      result += ch.toLowerCase();
    }
    // Convert lowercase to uppercase
    else if (ch == ch.toLowerCase() && ch != ch.toUpperCase()) {
      result += ch.toUpperCase();
    }
    // Keep numbers and special characters unchanged
    else {
      result += ch;
    }
  }

  // Display the converted string
  print("Converted string: $result");
}