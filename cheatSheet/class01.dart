import 'package:ntv_vor_25/methods.dart';
import "dart:io";
import 'dart:convert';
void main(List<String> arguments) {
  /*
    0. Create a personal message. Use a variable to represent a person's name, and print a
    message to that person. Your message should be simple, such as 'Good morning
    Hjörtur, would you like to learn Dart strings today?'
    Store Message and Name in seperate variable.
   */

  String goodMorning = "Hi, what is your name?";
  print(goodMorning);
  String firstName = stdin.readLineSync(encoding: utf8).toString();
  print("Good morning $firstName would you like to learn Dart strings today?");

  /*
  string person = "gunnar";
  print("hello $person bla bla bal");
   */

  /* 1. Find a quote from a famous person you admire. Print the quote and the name of its
  author. Your output should look something like the following, including the
  quotation marks:
  1. Albert Einstein once said, 'A person who never made a mistake never tried
  anything new.'
  */

  print(" ");
  print ("Tom Wambsgans once said, 'You can't make a Tomlette without breaking some Greggs'");

  /*
  string quote = "if once you don't succeed";
  string author = "höfundur";

  print(author + " " + quote);
  eða
  print($author $quote);

   */

  /*
    2. Assign a message to a variable, and print that message. Then change the value of
  the variable to a new message, and print the new message.
   */

  print(" ");
  String message = "Ég veit ekki alveg hvort þetta er rétt svona";
  message = "Núna er þetta rétt";
  print(message);

  /*
    3.  Remove all the spaces from the rhyme. And print the modified rhyme.
   */
  print(" ");
  String NureseryRyhme = "Eena, meena, mina, mo, Catch a mouse by the toe; If he squeals let him go, Eeena, meena, mina, mo.";
  String NureseryRhyme2 = NureseryRyhme.replaceAll(" ", "");
  print(NureseryRhyme2);
  /*
   4. Prompt a user for their full name (first name and last name)
    1. Store the users entry.
    2. Display the users entry with every letter being capitalised.
    3. Replace the first name with your name, and display it.
    4. Capitalise and display the users full name with each word having a capital
    first letter, and the other letters being lowercase.
   */

  print(" ");
  String goodMorning2 = "Ehm, what is your last name?";
  print(goodMorning2);
  String lastName = stdin.readLineSync(encoding: utf8).toString();
  print("Nice to meet you $firstName $lastName");
  String fullName = firstName + " " + lastName;
  // eða string fullname = "$firstname $lastname";
  fullName = fullName.toUpperCase();
  print(fullName);
  //eða string capitalizedfirstmame = firstname.substring(0,1).touppercase + firstname.substring(1,firstname.length).tolowercase();
  // sama fyrir seinna nafn
  //string capitilizedfullname = "$cepfirstname $caplasatname";
  firstName = firstName.replaceAll(firstName, "Klemenz");
  print("Now your name is $firstName");
  fullName = firstName + lastName;
  print(fullName);


  /*
    5. Display the following SSN on the correct Format:
      F.x. 2006892409
   */
  String SSN1 = "200689-2409";
  String SSN2 = "200689 2409";
  String SSN3 = "2 006 8924 09";

  SSN1 = SSN1.replaceAll("-","");
  SSN2 = SSN2.replaceAll(" ","");
  SSN3 = SSN3.replaceAll(" ","");

  //eða string formattedSSN = ssn1.replaceall("-", "");

  print(SSN1);
  print(SSN2);
  print(SSN3);

  /*
  Bónus task calculate the age from the SSN.
  ADFASDAS
   */

  // eitthvað til að fá isolate-a 89, draga frá 100 og plúsa 25
  var ageOf = SSN1.substring(4,6);
  print(100 - int.parse(ageOf) + 25);

  // int ssnFormatted = int.tryParse(formattedSSN1.substring(4,6));
  // int age = ssnFormatted!

}
