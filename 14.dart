import 'dart:io';
void main(){
  stdout.write("nter the number");
  int num=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=10;i++){
    print("${i}*${num}=${i*num}");
  }
}