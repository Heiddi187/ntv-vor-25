import "dart:io";
import "dart:math";
void main (List<String> arguments) {
  print("want to play a game?");
  print("select 1 for 0-100, 2 for 0-200, and 3 for 0-1000:");
  String difficulty = stdin.readLineSync().toString();
  print("you have selected $difficulty, good luck");
  int diffNumber = int.parse(difficulty);
//
  int diffScale = 10;
  if (diffNumber == 1) {
    diffScale = 100;
  }
  if (diffNumber == 2) {
    diffScale = 200;
  }
  if (diffNumber == 3) {
    diffScale = 1000;
  }
//
  int theAnswer = Random().nextInt(diffScale);
  print(theAnswer);
  bool stoppaLeik = false;
  while (!stoppaLeik) {
    print("Enter your guess:");
    String input = stdin.readLineSync().toString();
    int inputNumber = int.parse(input);
    if (theAnswer == inputNumber) {
      stoppaLeik = true;
      print ("you are right, well done");
    }
    if (theAnswer < inputNumber){
      print("wrong, you chose a number too HIGH");
    }
    if (theAnswer > inputNumber){
      print("wrong, you chose a number too LOW");
    }
  }
}