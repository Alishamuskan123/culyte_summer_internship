// Write minmax() taking four integers and displaying the minimum and maximum
import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter third number: ");
  int c = int.parse(stdin.readLineSync()!);

  stdout.write("Enter fourth number: ");
  int d = int.parse(stdin.readLineSync()!);

  minmax(a, b, c, d);
}

void minmax(int a, int b, int c, int d) {
  // Store numbers in a list
  List<int> numbers = [a, b, c, d];

  // Sort the list
  numbers.sort();

  // First element is minimum, last element is maximum
  print("Minimum number: ${numbers.first}");
  print("Maximum number: ${numbers.last}");
}