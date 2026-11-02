import 'dart:io';
void main(){
stdout.write("enter the value in inchest");  
int inchest =int.parse(stdin.readLineSync()!);

var meter =inchest * 0.0254;
print("Value per meter: ${meter} ");
}