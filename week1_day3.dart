void main() {
  List<int> nums = [88567, 7, 12, 2006, 901];

  int result = findNumbers(nums);

  print(result); 
}

int findNumbers(List<int> nums) {
  int count = 0; // Stores the number of integers with even digits

  // Loop through each number in the list
  for (int num in nums) {

    // Convert number to string and count its digits
    int digits = num.toString().length;

    // Check if the number of digits is even
    if (digits % 2 == 0) {
      count++; // Increase the count
    }
  }

  // Return the total count
  return count;
}