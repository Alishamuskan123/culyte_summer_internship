//Check whether a number is even or odd using the ternary operator.
import 'dart:io';

void main() {
  // Ask the user to enter a number
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  // Check even or odd using the ternary operator
  String result = (number % 2 == 0) ? "Even" : "Odd";

  // Display the result
  print("The number $number is $result.");
}