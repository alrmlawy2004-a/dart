import 'dart:io';

void main() {
  int a = 0;
  int sum = 0;
  int x=0;
  while (a < 10) {
    stdout.write("enter the number ${a+1} : ");
    int num = int.parse(stdin.readLineSync()!);
    if (num > 0) {
      sum += num;
      a++;
    } else {
      print("Error: The number is zero or negative");
      x++;
    }
  }
  print("Final Total: ${sum}");
  print("Number of incorrect entry attempts:${x}");
}
