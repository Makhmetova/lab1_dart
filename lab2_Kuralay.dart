import 'dart:io';

// #Laboratory work #2  Kuralay Makhmetova
void main() {
  task1();
  task2();
  task3();
}

void task1() {
  print('Enter number 1:');
  var a = int.parse(stdin.readLineSync());
  print('Enter number 2:');
  var b = int.parse(stdin.readLineSync());
  print('Enter number 3:');
  var c = int.parse(stdin.readLineSync());
  if ((a == b) || (a == c) || (b == c))
    print("$a");
  else if ((b < a && a < c) || (c < a && a < b))
    print("The mean is:$a");
  else if ((a < b && b < c) || (c < b && b < a))
    print("The mean is:$b");
  else if ((a < c && c < b) || (b < c && c < a))
    print("The mean is:$c");
  else
    print("Error");
}

void task2() {
  print('Enter the number: ');
  var year = int.parse(stdin.readLineSync());

  if (year % 4 != 0 || (year % 100 == 0 && year % 400 != 0)) {
    print("It's not a leap year!");
  } else {
    print("It's leap year!");
  }
}

void task3() {
  print('Enter 4 numbers');
  var numbers = new List(4);
  for (int i = 0; i < 4; i++) {
    numbers[i] = int.parse(stdin.readLineSync());
  }
  numbers.sort();
  print(numbers.reversed);
}
