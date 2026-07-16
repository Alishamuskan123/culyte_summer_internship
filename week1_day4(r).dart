//Find the second largest element in an array.
void main() {
  // Array of integers
  List<int> numbers = [12, 45, 7, 89, 34, 56, 78];

  // Sort the array in ascending order
  numbers.sort();

  // The second last element is the second largest
  int secondLargest = numbers[numbers.length - 2];

  // Display the result
  print("Sorted Array: $numbers");
  print("Second Largest Element: $secondLargest");
}