import 'dart:io';

void main(){
stdout.write("enter the number of minutes");
int minutes=int.parse(stdin.readLineSync()!);

var days= minutes/1440;
var years=minutes/525600;
print("Number of days: ${days}");
print("Number of years: ${years}");
}