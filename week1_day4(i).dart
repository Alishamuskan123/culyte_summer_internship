// Check if a number (range 1-300) input by the user is prime
import 'dart:io';

void main() {
  // Input a number
  stdout.write("Enter a number (1-300): ");
  int number = int.parse(stdin.readLineSync()!);

  // Variable to count the factors
  int count = 0;

  // Check if the number is in the valid range
  if (number < 1 || number > 300) {
    print("Invalid input! Enter a number between 1 and 300.");
  } else {
    // Count the factors of the number
    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        count++;
      }
    }

    // A prime number has exactly 2 factors 1 and itself
    if (count == 2) {
      print("$number is a prime number.");
    } else {
      print("$number is not a prime number.");
    }
  }
}