import "dart:io";
import 'dart:convert';

void main(List<String> arguments) {
/*
  print("hvað er uppáhaldstalan þín?");
  String inputNumber = stdin.readLineSync().toString();
  print("hún er $inputNumber");
  int result = 5 * int.parse(inputNumber);
  print("5 sinnum $inputNumber er $result");

  int number1 = 8;
  int number2 = 3;
  double result2 = number1 / number2;
  print(result2.toStringAsFixed(3));


  print("Hæ hvað heitir þú?");
  String firstName = stdin.readLineSync(encoding: utf8).toString();
  print("Halló $firstName hvers son ert þú?");
  String lastName = stdin.readLineSync(encoding: utf8).toString();
  print("gaman að hitta þig $firstName $lastName");

  firstName = firstName.replaceAll(firstName, "Jón");
  print("Væri það ekki betra að heita $firstName $lastName ?");
  */

  String firstName = "Heiðar T.H.";
  String lastName = "Hlöðversson";
  String fullName = firstName + " " + lastName;
  String url = "ntv.is";

  List<String> names = firstName.split(" ");
  print(names);
  print(names[0]);
  print(names[1]);

  String userName = names[0] + names[1].substring(0,1) + lastName.substring(0,3);
  userName = userName.toLowerCase();
  print(userName);
  String emailAddress = userName + "@" + url;
  print(emailAddress);

}