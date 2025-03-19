import 'dart:io';
// Classes

import 'dart:io';

class Person {

  String name; // þegar þú ert með required i constructor
  int age;
  String? gender; // ef þú ert með optional value þarf að vera ?merki

  Person({required this.name, required this.age, this.gender = "unspecified"}); // þetta er construckorinn

  void introduction() {
    print("Hi, I'm $name and I a $age years old $gender");
  }
}

void main() {
/*
  Person person1 = Person(name: "Jón", age: 37, gender: "male");
  Person person2 = Person(name: "Andri", age: 34); // ekkert gender valið svo þú færð default value úr constructor

  print(person1.age); // þarf að specifya hvað þú vilt prenta
  person1.introduction();
  person2.introduction();
*/

  print("Enter name");
  String? name = stdin.readLineSync();

  print("Age as well");
  int? age= int.parse(stdin.readLineSync()!);

  print("and gender *optional*");
  String? gender = stdin.readLineSync();
  if(gender == "") {
    gender = "unknown";
  }

  Person user = Person(name: name!, age: age, gender: gender);

  user.introduction();

}