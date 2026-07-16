// Take an array as input and calculate its Mean, Median, and Mode.
import 'dart:io';

void main() {
  // Ask the user to enter the size of the array
  stdout.write("Enter the size of the array: ");
  int size = int.parse(stdin.readLineSync()!);

  //empty list to store the array elements
  List<int> numbers = [];

  // Input array elements from the user
  print("Enter the array elements:");
  for (int i = 0; i < size; i++) {
    stdout.write("Element ${i + 1}: ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }

// Mean
  // Variable to store the sum of all elements
  int sum = 0;

  // Add all elements of the array
  for (int num in numbers) {
    sum += num;
  }

  // Calculate the mean
  double mean = sum / size;

  //  Median 

  // Sort the array in ascending order
  numbers.sort();

  double median;

  // Check if the number of elements is even or odd
  if (size % 2 == 0) {
    // Median is the average of the two middle elements
    median = (numbers[size ~/ 2 - 1] + numbers[size ~/ 2]) / 2;
  } else {
    // Median is the middle element
    median = numbers[size ~/ 2].toDouble();
  }

  //  Mode 

  // Assume the first element is the mode
  int mode = numbers[0];

  // Variable to store the highest frequency
  int maxCount = 0;

  // Check the frequency of each element
  for (int i = 0; i < numbers.length; i++) {
    int count = 0;

    // Count how many times the current element appears
    for (int j = 0; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        count++;
      }
    }

    // Update the mode if a higher 
    if (count > maxCount) {
      maxCount = count;
      mode = numbers[i];
    }
  }

  //  final results
  print("\nMean = $mean");
  print("Median = $median");
  print("Mode = $mode");
}