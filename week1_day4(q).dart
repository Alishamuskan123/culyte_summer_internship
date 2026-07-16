//Move a given number to the end of an array. E.g. number=0, array=[2,5,7,0,4,0,7,-5,8,0] → [2,5,7,8,4,-5,7,0,0,0].
void main() {
  // Original array
  List<int> array = [2, 5, 7, 0, 4, 0, 7, -5, 8, 0];

  // Number to move to the end
  int number = 0;

  // Position where the next non-zero element will be placed
  int index = 0;

  // Move all elements except the given number to the front
  for (int i = 0; i < array.length; i++) {
    if (array[i] != number) {
      array[index] = array[i];
      index++;
    }
  }

  // Fill the remaining positions with the given number
  while (index < array.length) {
    array[index] = number;
    index++;
  }

  // Display the updated array
  print("Array after moving $number to the end:");
  print(array);
}