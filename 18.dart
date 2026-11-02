import 'dart:io';
void main(){
stdout.write("enter the temperature");
int temperature=int.parse(stdin.readLineSync()!);

if(temperature<0){
  print("It's freezing, stay home");
}else if(temperature>=0&&temperature<=20){
  print("cold, wear a jacket");
}else if(temperature>=21 && temperature<=30){
  print("The weather is nice today");
}else {
  print("It's hot, stay hydrated");
}
}