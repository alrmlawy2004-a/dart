import 'dart:io';

void main() {
  stdout.write("enter the first nambre");
  int number1 = int.parse(stdin.readLineSync()!);

  stdout.write("enter the scond numbre");

  int number2 = int.parse(stdin.readLineSync()!);
  print("Enter one of the following operations");

  print("+\n" + "-\n" + "*\n" + "/\n" + "%");
  stdout.write("enter the first nambre");
  String operations = (stdin.readLineSync()!);

  switch (operations) {
    case '+':
      print("${number1 + number2}");
      break;
    case '-':
      print("${number1 - number2}");
      break;
    case '*':
      print("${number1 * number2}");
      break;
    case '/':
      print("${number1 / number2}");
      break;
    case '%':
      print("${number1 % number2}");
      break;
      default:
      print("Invalid input");
  }
}
