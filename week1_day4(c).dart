//Convert Fahrenheit to Celsius and Kelvin: C = (F − 32) / 1.8, K = C + 273 
import 'dart:io';

void main() {
  // Ask the user to enter Fahrenheit temperature
  stdout.write("Enter temperature in Fahrenheit: ");
  double fahrenheit = double.parse(stdin.readLineSync()!);

  // Convert Fahrenheit to Celsius
  double celsius = (fahrenheit - 32) / 1.8;

  // Convert Celsius to Kelvin
  double kelvin = celsius + 273;

  // Display the results
  print("\nTemperature Conversion:");
  print("Fahrenheit: ${fahrenheit.toStringAsFixed(2)}°F");
  print("Celsius: ${celsius.toStringAsFixed(2)}°C");
  print("Kelvin: ${kelvin.toStringAsFixed(2)} K");
}