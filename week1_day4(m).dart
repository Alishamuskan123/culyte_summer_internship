//Input an array and display its elements in reverse order (separate loops for input/output).
import 'dart:io';

void main() {
  // Ask the user to enter the size of the array
  stdout.write("Enter the size of the array: ");
  int size = int.parse(stdin.readLineSync()!);

  // Create an empty list
  List<int> numbers = [];

  // Input array elements
  print("Enter the array elements:");
  for (int i = 0; i < size; i++) {
    stdout.write("Element ${i + 1}: ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  // Display array elements in reverse order
  print("Array elements in reverse order:");
  for (int i = size - 1; i >= 0; i--) {
    print(numbers[i]);
  }
}