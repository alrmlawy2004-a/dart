import 'dart:io';
void main(){
  String userName = "alaa@gmali.com";
  String password= "123456789";
  int a=0;

  do{
    stdout.write("enter the user Name");
  String useruame = (stdin.readLineSync()!);

      stdout.write("enter thepassword");
  String passwor = (stdin.readLineSync()!);

  if(userName==useruame && password==passwor){
    print("Logged in successfully");
    break;

  }else{
    print("Try again");
    a++;
  }
  }while(a<=3);
}