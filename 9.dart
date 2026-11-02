import 'dart:io';
void main(){
stdout.write("enter the temperature in Fahrenheit.");  
int Fahrenheit =int.parse(stdin.readLineSync()!);

var Celsius =5*(Fahrenheit-32) / 9;
print("Temperature in Celsius: ${Celsius} ");
}