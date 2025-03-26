import 'dart:io';
import 'dart:math';
import 'package:io/io.dart';

void main() {
  //print("Enter number");
  //String input = stdin.readLineSync().toString();
  //print(input);
/*
  if(input.contains("+")) {
    List input2 = input.split("+");
    print(input2);
    int num1 = int.parse(input2[0]);
    print(input);
    print(input2);
    int num2 = int.parse(input2[1]);
    print(input2);
    print(num1);
    print(num2);
    int result = num1 + num2;
    print("$num1, $num2, $result");
    print(result);
  }
  // sama fyrir - / *
  // nota double fyrir brot

 */

  /////////////////////////////////////////////////////////////////////////////

  /*
  print("Do you want to add(+), minus(-), multiply(*) or divide(/) that number?");
  String input3 = stdin.readLineSync().toString();
  print("With what number?");
  String input4 = stdin.readLineSync().toString();
  //print(input3);
  //print(input4);

  int num3 = int.parse(input);
  int num4 = int.parse(input4);

  if(input3.contains("+")) {
    int result = num3 + num4;
    print("$input $input3 $input4 = $result");
  }
  else if(input3.contains("-")) {
    int result = num3 - num4;
    print("$input $input3 $input4 = $result");
  }
  else if(input3.contains("*")) {
    int result = num3 * num4;
    print("$input $input3 $input4 = $result");
  }
  else if(input3.contains("/")) {
    double result = num3 / num4;
    print("$input $input3 $input4 = $result");
  }
  */

  String c10 = "10 of clubs";
  int c10value = int.parse(c10.split(" ")[0]);
  print(c10value);
  String c10suit = c10.split(" ")[2];
  print(c10suit);

  Cards cardH2 = Cards("heart", 2);
  Cards cardH3 = Cards("heart", 3);
  cardH2.showCard();
  print(cardH2.value);
  print(cardH2.suit);
  //cardH2.addToDeck(Cards);
  //cardH3.addToDeck(Cards);

  
}
class Deck {
  List deck = [];

  Deck(deck);
}
class Cards {
  String suit;
  int value;

  Cards(this.suit, this.value);

  void showCard() {
    print("$suit, $value");
  }
  /*
  void addToDeck(Cards) {
  addToDeck(Cards);
  }

   */
}

