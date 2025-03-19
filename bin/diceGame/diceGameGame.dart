import "diceGameEngine.dart";
import 'dart:io';
import 'dart:math';
import 'package:collection/collection.dart';

void main() {
  print("Welcome to this game of dice");
  print("Player 1, what is your name?");
  String player1 = stdin.readLineSync()!;
  print("Player 2, what is your name?");
  String player2 = stdin.readLineSync()!;
  print("Nice to have you $player1 and $player2");
  print("Let the game begin");
  int p1total = 0;
  List<int> player1sum = [];
  int p2total = 0;

  //v2 dices rolled 3 times
  for(int i = 0; i < 5; i++) {
    int roll1p1 = diceRoll();
    int roll2p1 = diceRoll();
    p1total = roll1p1 + roll2p1 + p1total;
    int throwNumber = i + 1;
    print("${player1}'s throw nr.$throwNumber");
    print("a $roll1p1 and a $roll2p1");
    sleep(Duration(milliseconds:100));
  }
  print("$player1 your total is $p1total");
  print("");

  print("and now it's $player2's turn");
  for(int i = 0; i < 5; i++) {
    int roll1p2 = diceRoll();
    int roll2p2 = diceRoll();
    p2total = roll1p2 + roll2p2 + p2total;
    int throwNumber = i + 1;
    print("${player2}'s throw nr.$throwNumber");
    print("a $roll1p2 and a $roll2p2");
    sleep(Duration(milliseconds:100));
  }
  print("$player2 your total is $p2total");

  print("");
if(p1total > p2total) {
  print("$player1 you are the WINNER!!!");
} else if (p1total == p2total) {
  print("oh no it's a tie!!!");
  } else {
  print("$player2 you are the WINNER!!!");
}











}
