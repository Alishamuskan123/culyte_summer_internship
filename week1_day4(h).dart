// Input two integers and display the sum of even numbers between them
import 'dart:io';

void main() {
  // Ask the user to enter the first integer
  stdout.write("Enter the first number: ");
  int start = int.parse(stdin.readLineSync()!);

  // Ask the user to enter the second integer
  stdout.write("Enter the second number: ");
  int end = int.parse(stdin.readLineSync()!);

  // Variable to store the sum of even numbers
  int sum = 0;

  // Loop through all numbers from start to end
  for (int i = start; i <= end; i++) {
    // Check if the current number is even
    if (i % 2 == 0) {
      // Add the even number to the sum
      sum += i;
    }
  }

  // Display the final sum
  print("The sum of even numbers between $start and $end is: $sum");
}