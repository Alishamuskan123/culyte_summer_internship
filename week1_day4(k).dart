//Print 1 to 100 using recursion.
void main() {
  // Call the recursive function starting from 1
  printNum(1);
}

// Recursive function to print numbers from 1 to 100
void printNum(int n) {
  // Stop recursion when n becomes greater than 100
  if (n > 100) {
    return;
  }

  // Print the current number
  print(n);

  // Recursive call with the next number
  printNum(n + 1);
}