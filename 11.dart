import 'dart:io';

void main() {
  stdout.write('Enter an integer between 0 and 1000: ');
  int number = int.parse(stdin.readLineSync()!);

  int units = number % 10;           
  var tens = (number / 10) % 10;    
  var hundreds = (number / 100) % 10;
  var thousands = number / 1000;   


  var sum = units + tens + hundreds + thousands;

  print('The sum of digits is: $sum');
}