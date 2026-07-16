//Input two equal-size arrays and find their element-by-element sum
import 'dart:io';

void main() {
  // Enter the size of the arrays
  stdout.write("Enter the size of the arrays: ");
  int size = int.parse(stdin.readLineSync()!);

  List<int> array1 = [];
  List<int> array2 = [];

  // Input first array
  print("Enter first array elements:");
  for (int i = 0; i < size; i++) {
    array1.add(int.parse(stdin.readLineSync()!));
  }

  // Input second array
  print("Enter second array elements:");
  for (int i = 0; i < size; i++) {
    array2.add(int.parse(stdin.readLineSync()!));
  }

  // Print the sum of corresponding elements
  print("Element-by-element sum:");
  for (int i = 0; i < size; i++) {
    print(array1[i] + array2[i]);
  }
}