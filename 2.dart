import 'dart:io';

void main() {
  stdout.write("enter the first nambre");
  int number1 = int.parse(stdin.readLineSync()!);

  stdout.write("enter the scond numbre");
  int number2 = int.parse(stdin.readLineSync()!);

  print(" Result: ${number1}+${number2} = ${number1 + number2}");
  print(" Result: ${number1}-${number2} = ${number1 - number2}");
  print(" Result: ${number1}*${number2} = ${number1 * number2}");
  print(" Result: ${number1}/${number2} = ${number1 / number2}");
  print(" Result: ${number1}%${number2} = ${number1 % number2}");
}
