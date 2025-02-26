import 'dart:math';
import "dart:io";
void main(List<String> arguments) {
  var randomNumber = Random().nextInt(100);
  //print(randomNumber); //taka þetta út til að spila
  print("Hver er talan?");

  bool authenticated = false;
  while(!authenticated) {
  String theGuess = stdin.readLineSync().toString();
  var theGuessNumber = int.parse(theGuess);

  if (theGuessNumber == randomNumber) {
    authenticated = true;
    print("Já þú náðir því!!!!");
  }
    if (theGuessNumber < randomNumber) {
      authenticated = false;
      print("Nei of lág, reyndu aftur");
    }
    if (theGuessNumber > randomNumber) {
      authenticated = false;
      print("Nei of há, reyndu aftur");
    }

  }
}
