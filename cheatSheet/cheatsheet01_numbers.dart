<<<<<<< HEAD
import "dart:io";
import 'dart:convert';

void main(List<String> arguments) {
/*
  print("hvað er uppáhaldstalan þín?");
  String inputNumber = stdin.readLineSync().toString();
  print("hún er $inputNumber");
  int result = 5 * int.parse(inputNumber);
  print("5 sinnum $inputNumber er $result");

=======
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  /*
  print("Hvað er uppáhaldstalan þín?");
  String inputNumber = stdin.readLineSync().toString();
  print("Hún er $inputNumber");
  int result = 5 * int.parse(inputNumber);
  print("5 sinnum $inputNumber er $result");


>>>>>>> 6316405830aeba7733071e8420b12a1a38fd133d
  int number1 = 8;
  int number2 = 3;
  double result2 = number1 / number2;
  print(result2.toStringAsFixed(3));

<<<<<<< HEAD

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
=======
  print("Hæ hvað heitir þú?");
  String firstName = stdin.readLineSync(encoding: utf8).toString();
  print("Hvað er eftirnafnið þitt?");
  String lastName = stdin.readLineSync(encoding: utf8).toString();
  //Bætið við núna að spyrja um eftirnafn og prentið svo út "Hello fullt nafn"
  firstName = firstName.replaceAll(firstName, "Jón");
  //Svo breyta firstname í "Jón" ef þið heitið jón breytið í Klemenz
  print("Hello $firstName $lastName");
   */
  String firstName = "Guðríður Þuríður";
  String lastName = "Guðjónsdóttir";
>>>>>>> 6316405830aeba7733071e8420b12a1a38fd133d
  String fullName = firstName + " " + lastName;
  String url = "ntv.is";

  List<String> names = firstName.split(" ");
  print(names);
  print(names[0]);
  print(names[1]);

<<<<<<< HEAD
  String userName = names[0] + names[1].substring(0,1) + lastName.substring(0,3);
  userName = userName.toLowerCase();
  print(userName);
  String emailAddress = userName + "@" + url;
  print(emailAddress);

=======
  String username = names[0] + names[1].substring(0,1) + lastName.substring(0,3);
  username = username.toLowerCase();
  username = removeIcelandicLetters(username);
  print(username);
  String emailAddress = username + "@" + url;
  print(emailAddress);
}

String removeIcelandicLetters(String input) {
  Map<String, String> icelandicToLatin = {
    'ð': 'd',
    'þ': 'th',
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'ö': 'o',
    'Æ': 'Ae',
    'æ': 'ae',
    'Ð': 'D',
    'Þ': 'Th',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Ö': 'O'
  };

  icelandicToLatin.forEach((key, value) {
    input = input.replaceAll(key, value);
  });

  return input;
>>>>>>> 6316405830aeba7733071e8420b12a1a38fd133d
}