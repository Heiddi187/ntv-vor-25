import 'dart:io';
import 'dart:math';

void main() {

  Person person1 = Person(name: "Andri", age: 35, job: "fiskari");
  person1.printInfo();
  person1.ages();
  person1.printInfo();
  person1.quitJob();
  person1.printInfo();
  person1.ages5years();
}

class Person {
  String name;
  int age;
  String job;

  Person({required this.name, required this.age, required this.job});

  void printInfo () {
      print("Hi my name is $name and I'm $age years old and my job is $job");
  }
  void ages () {
    age++;
    print("Now $name is $age years old");
  }
  void ages5years () {
    age++;
    age++;
    age++;
    age++;
    age++;
    print("Now $name is $age years old");
  }
  void quitJob () {
    print("I quit my job as $job");
    job = "none";
  }



  //////////////////////////////////////////////////////////////////////

  //tímaverkefni
  // reiknivel
/*
  print("Enter what you want to calculate");

  bool isActive = true;

  while(!false) {
    String input = stdin.readLineSync()!;
    if (input.contains("+")) {
      List parts = input.split("+");
      double num1 = double.parse(parts[0]);
      double num2 = double.parse(parts[1]);
      print("Result: ${num1 + num2}");
    }
    else if (input.contains("-")) {
      List numbers = input.split("-");
      double num1 = double.parse(numbers[0]);
      double num2 = double.parse(numbers[1]);
      print("Result: ${num1 - num2}");
    }
    else if (input.contains("*")) {
      List numbers = input.split("*");
      double num1 = double.parse(numbers[0]);
      double num2 = double.parse(numbers[1]);
      print("Result: ${num1 * num2}");
    }
    else if (input.contains("/")) {
      List numbers = input.split("/");
      double num1 = double.parse(numbers[0]);
      double num2 = double.parse(numbers[1]);
      print("Result: ${num1 / num2}");
    }
    else if (input == "0") {
      print("exit calculator");
      isActive = false;
      return;
    }
    else {
      print("input error");
    }

  }

 */
}