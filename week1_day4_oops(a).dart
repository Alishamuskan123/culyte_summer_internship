/* Heater class — a single integer field temperature. No-argument constructor sets temperature to 15.
Mutators warmer/cooler adjust it by 5. Accessor method returns temperature. Demonstrate usage*/

class Heater {
  // Variable to store temperature
  int temperature = 15;

  // Increase temperature by 5
  void warmer() {
    temperature = temperature + 5;
  }

  // Decrease temperature by 5
  void cooler() {
    temperature = temperature - 5;
  }

  // Return current temperature
  int getTemperature() {
    return temperature;
  }
}

void main() {
  // Create Heater object
  Heater h = Heater();

  // Display initial temperature
  print("Temperature: ${h.getTemperature()}");

  // Increase temperature
  h.warmer();
  print("After warmer: ${h.getTemperature()}");

  // Decrease temperature
  h.cooler();
  print("After cooler: ${h.getTemperature()}");
}