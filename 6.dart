import 'dart:io';
void main(){
stdout.write("enter the length");  
int length =int.parse(stdin.readLineSync()!);

stdout.write("enter the width");
int width=int.parse(stdin.readLineSync()!);

  int Area_rectangle=length*width;

print("Area of  the rectangle: ${Area_rectangle} ");
}