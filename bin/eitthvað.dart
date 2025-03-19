import 'dart:io';
import 'dart:math';

void main() {
/*

class Person {

  String name;
  int age;
  String? gender;

  Person({required this.name, required this.age, this.gender});


}
*/
/*
// Class vehicle
class Vehicle {
  String brand;
  int year;

  Vehicle({required this.brand, required this.year});
  void displayInfo() {
    print("$brand - $year");
  }
}

// Class car extends from vehicle
class Car extends Vehicle{
  int doors;
  String type;
  int mileage;

  Car({required this.doors, required this.type, required this.mileage, required super.brand, required super.year});

void showMoreInfo() {
  print("is a $doors door $type and has been driven $mileage.kms ");
}
}

void main() {

  Car car1 = Car(doors: 5, type: "sedan", mileage: 100000, brand: "Tesla", year: 2023);
  car1.displayInfo(); // af því að displayInfo er bara að horfa á það sem er í class vehicle
  car1.showMoreInfo(); // þá kemur restin af infoinu
  Car car2 = Car(doors: 5, type: "truck", mileage: 386000, brand: "Musso", year: 1999);
  car2.displayInfo();
  car2.showMoreInfo();
}
*/


/*
void printMyNameAndJob (String name, String job, int age){
  print(name + " " + job + " " + age.toString());
  // eða print("$name $job $age"); gerir age að streng þannig líka
}
  printMyNameAndJob("Andri", "forritari", 24);
  printMyNameAndJob("Bubbi", "Kennari", 33);

*/

  /*
  // increment
  int increment(int num1, int num2){
    return num1 + num2;
  }
  int sumIncrement = increment(5, 4);
  print(sumIncrement);

  //decrement
  int decrement(int num1, int num2){
    return num1 - num2;
}
  int sumDecrement = decrement(5, 3);
  print(sumDecrement);


  print("Type a number");
  String input1 = stdin.readLineSync()!; // getur ekki verið String? input því þá virkar ekki int.parse
  print("And a number to add to the other number");
  String input2 = stdin.readLineSync()!; // sjá að ofan, þess vegna er notað !

  int input1AsNum = int.parse(input1);
  int input2AsNum = int.parse(input2);

  int numSum = increment(input1AsNum, input2AsNum);
    print(numSum);
  */
/*
  //int howLongTill50(int age){
  //  return 50 - age;
  //} eða

   int howLongTill50(String age) {
     int yearsTill50 = int.parse(age);
     return 50 - yearsTill50;
   }
  int years = howLongTill50("33");
  print("In $years years you'll turn 50");
*/
/*
  print("Enter your age");
  String? input = stdin.readLineSync();

  int howLongTill50(String age) {
    int yearsTill50 = 50 - int.parse(age);
    return yearsTill50;
  }

  int years = howLongTill50(input!);
  print("in $years years you'll turn 50");
*/
/*
  print("Enter your age");
  String? input = stdin.readLineSync();
  howLongTill50(input!);

}

void howLongTill50(String age){
  int yearsTill50 = 50 - int.parse(age);
  print("In $yearsTill50 years you'll be 50");
 }
*/
/*
  // Positional arguements
  void printNameAndAge(String name, int age){
    print("My name is $name and i'm $age years old");
  }
  printNameAndAge("dart", 15);

  // named arguments
  void printNameAndAge({String? name = "unknown", int? age = null}){
    print("My name is $name and i'm $age years old");
  }
  printNameAndAge(name: "darty", age: 24);
  printNameAndAge(age: 21);
  printNameAndAge(name: "Siggi");


}
*/
/*
void main() {
  print("2 dices rolled 3 times");
  int total = 0;
  for(int i = 0; i < 3; i++) {
    int dice1Rolled = Random().nextInt(6) + 1;
    int dice2Rolled = Random().nextInt(6) + 1;
    total = dice1Rolled + dice2Rolled + total;
    print("You rolled a $dice1Rolled");
    print("and then a $dice2Rolled");
    print("so you total is $total");
  }


}
class Player1 {
  String name;
  int total = 0;

  Player1({required this.name, required this.total});
*/

// methods addNewContact, listAllContacts, deleteContactByName;
  AddContact contact1 = AddContact(name: "Andri", phoneNumber: 5551234, email: "a@b.is");
  AddContact contact2 = AddContact(name: "Bubbi", phoneNumber: 7771234, email: "b@a.is");

  print("Enter contact name");
  String name = stdin.readLineSync()!;
  print("Enter phonenumber");

  print("Enter email");


}
/*
class Contacts {
  String name;
  int phoneNumber;
  String email;

  Contacts({required this.name, required this.phoneNumber, required this.email});
}
*/
class AddContact {
  String name;
  int phoneNumber;
  String email;

  AddContact({required this.name, required this.phoneNumber, required this.email});
}
