
import 'dart:io';
void main() {
  int attempts = 0;
  bool loggedIn = false;

  do{
    stdout.write("Enter username:");
    String username = stdin.readLineSync() ?? "";

    stdout.write("Enter password:");
    String password = stdin.readLineSync() ?? "";

    loggedIn = login(username, password);
    attempts++;

    if(!loggedIn) {
      print("Wrong username or password");
      print("Attempts left: ${3 - attempts}");
    }
  } while (!loggedIn);

  if (!loggedIn) {
    print("Login failed. Program terminated");
    return;
  }

  print("Login successful");

  int choice = 0;

  while (choice != 4) {
    print("\n1. Deposit");
    print("2. Withdraw");
    print("3. Check Balance");
    print("4. Logout");
    print("Enter your choice:");

    String? input = stdin.readLineSync();
    choice = int.tryParse(input ?? "") ?? 0;

    switch (choice) {
      case 1:
        double amount = readAmount();
        balance = deposit(amount, balance);
        print("Updated balance: $balance");
        break;

      case 2:
        double amount = readAmount();
        balance = withdraw(amount, balance: balance);
        print("Current balance: $balance");
        break;

      case 3:
        checkBalance(balance);
        break;

      case 4:
        print("Logged out successfully.");
        break;

      default:
        print("Invalid choice. Please select 1 to 4.");
    }
  }
}

String correctUsername = "alaa";
String correctPassword = "1234";
double balance = 0;

bool login(String username, String password) {
  return username == correctUsername &&
      password == correctPassword;
}

double deposit(double amount, [double currentBalance = 0]) {
  return currentBalance + amount;
}

double withdraw(double amount, {required double balance}) {
  if (amount > balance) {
    print("Insufficient balance");
    return balance;
  }

  return balance - amount;
}

void checkBalance(double balance) {
  print("Current balance: $balance");
}

double readAmount() {
  while (true) {
    stdout.write("Enter amount:");
    String? input = stdin.readLineSync();

    double? amount = double.tryParse(input ?? "");

    if (amount == null) {
      print("Invalid input. Enter a number.");
    } else if (amount < 0) {
      print("Amount cannot be negative.");
    } else {
      return amount;
    }
  }
}


