//  Enter a month number (1-12) and print the number of days in that month. in dart
import 'dart:io';

void main() {
  stdout.write("Enter month number (1-12): ");
  int month = int.parse(stdin.readLineSync()!);

  if (month == 1 ||
      month == 3 ||
      month == 5 ||
      month == 7 ||
      month == 8 ||
      month == 10 ||
      month == 12) {
    print("This month has 31 days.");
  } else if (month == 4 ||
      month == 6 ||
      month == 9 ||
      month == 11) {
    print("This month has 30 days.");
  } else if (month == 2) {
    print("This month has 28 or 29 days.");
  } else {
    print("Invalid month number.");
  }
}