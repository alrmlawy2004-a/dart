import 'dart:io';
void main(){
stdout.write("enter the amount in shekels");  
int shekels =int.parse(stdin.readLineSync()!);


  var amount_shekels=shekels*3.25;

print("Amount in dollars: ${amount_shekels} ");
}