import 'dart:io';

void main(){
stdout.write("enter the  radiu.");
int radiu = int.parse(stdin.readLineSync()!);
final a =3.14;
var  area_circle= a*radiu*radiu;

print("Area of the circle: ${area_circle}");
}