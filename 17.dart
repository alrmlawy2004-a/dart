import 'dart:io';

void main() {
  int grades = 5;      
  double sum = 0;       
   int attempts = 3;   
    int gra = 0;   

  for (int i = 1; i <= grades; i++) {
     
    while (attempts > 0) {
      stdout.write("Enter mark $i: ");
      gra = int.parse(stdin.readLineSync()!);

  
      if (gra >= 0 && gra <= 100) {
        break; 
      } else {
         attempts--; 
        print("Invalid input! You have $attempts attempts left.");
      }  
    }

    if (attempts == 0 ) {
      print("Attempts exhausted. Program exiting.");
      return; 
    }

   sum += gra;
  }
  double result = sum / grades;
  print("The student's average is: $result");
}