//BankAccount class — models a checking account: create with an opening balance, display balance, make a deposit and a withdrawal, then display the new balance. Withdrawal below Rs. 500 balance shows an insufficient-balance message; otherwise it proceeds.
class BankAccount {
  // Variable to store account balance
  double balance;

  // Constructor to set opening balance
  BankAccount(this.balance);

  // Display current balance
  void showBalance() {
    print("Balance: Rs. $balance");
  }

  // Deposit money into account
  void deposit(double amount) {
    balance = balance + amount;
    print("Deposited: Rs. $amount");
  }

  // Withdraw money if at least Rs. 500 remains
  void withdraw(double amount) {
    if (balance - amount < 500) {
      print("Insufficient Balance");
    } else {
      balance = balance - amount;
      print("Withdrawn: Rs. $amount");
    }
  }
}

void main() {
  // Create account with opening balance
  BankAccount account = BankAccount(5000);

  // Display initial balance
  account.showBalance();

  // Deposit money
  account.deposit(1000);

  // Withdraw money
  account.withdraw(2000);

  // Display updated balance
  account.showBalance();

  // Try to withdraw more than allowed
  account.withdraw(4000);
}