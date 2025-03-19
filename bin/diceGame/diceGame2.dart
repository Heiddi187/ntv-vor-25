class Dice {
  int sides = 6;

  Dice({required this.sides});
}

class Player {
  String name;
  int score;
  int wins;

  Player({required this.name, required this.score, required this.wins});
}

class DiceGame {
  int rounds;
  
  DiceGame ({required this.rounds});
}