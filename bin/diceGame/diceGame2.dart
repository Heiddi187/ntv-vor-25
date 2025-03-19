import 'dart:io';
void main() {
  print("byrjar");
  Player player = Player(name: "");
        print("Enter name");
        String? name = stdin.readLineSync();
        Player playerToAdd = Player(name: "$name");
  }


class Dice {
  int sides = 6;

  Dice({required this.sides});
}

class Player {
  String name;
  int? score;
  int? wins;


  Player({required this.name, this.score, this.wins});
}

class PlayerManager {
  List<Player> players = [];

  void displayPlayer() {
    for (Player player in players) {
      print("${player.name}, ${player.score}, ${player.wins}");
    }
  }
  void AddPlayer(Player player) {
    players.add(player);
  }
}

class DiceGame {
  int rounds;
  
  DiceGame ({required this.rounds});
}