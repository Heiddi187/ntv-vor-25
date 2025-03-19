import 'dart:math';

void main() {
  // til að athuga hvað teningarnir koma upp með
  for (int i = 0; i <= 100; i++){
    diceRoll();
  }


}

int diceRoll() {
  int diceOutcome = Random().nextInt(6) + 1;
  return diceOutcome;
  print(diceOutcome);
}

class Player1 {
  String name;
  int total;

  Player1({required this.name, required this.total});
}

class Player2 {
  String name;
  int total;

  Player2({required this.name, required this.total});
}
