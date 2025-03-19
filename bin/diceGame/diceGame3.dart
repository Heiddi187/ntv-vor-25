import 'dart:io';
import 'dart:math';

void main () {

  print("Welcome to this game of dice");
  print("Player 1, what is your name?");
  String player1 = stdin.readLineSync()!;
  Player p1 = Player(player1);
  print("Player 2, what is your name?");
  String player2 = stdin.readLineSync()!;
  Player p2 = Player(player2);
  print("And how many rounds do you need to win to win the game?");
  int roundsToWin = int.parse(stdin.readLineSync()!);
  print("Nice to have you $player1 and $player2");
  print("\nLet the game begin");
  //int p1total = 0;
  //int p2total = 0;

  while (p1.games < roundsToWin && p2.games < roundsToWin) {
    int p1total = 0;
    for (int i = 0; i < 3; i++) {
      int roll1p1 = diceRoll();
      int roll2p1 = diceRoll();
      p1total = roll1p1 + roll2p1 + p1total;
      int throwNumber = i + 1;
      print("\n${player1}'s throw nr.$throwNumber");
      print("a $roll1p1 and a $roll2p1");
      sleep(Duration(milliseconds: 1000));
    }
    print("\n$player1 your total is $p1total");

    print("\nand now it's $player2's turn");
    int p2total = 0;
    for (int i = 0; i < 3; i++) {
      int roll1p2 = diceRoll();
      int roll2p2 = diceRoll();
      p2total = roll1p2 + roll2p2 + p2total;
      int throwNumber = i + 1;
      print("\n${player2}'s throw nr.$throwNumber");
      print("a $roll1p2 and a $roll2p2");
      sleep(Duration(milliseconds: 1000));
    }
    print("$player2 your total is $p2total");

    print("");
    if (p1total > p2total) {
      p1.gamesWon();
      print("$player1 wins this round!!!");
      print("$player1 has won ${p1.games} rounds");
      print("$player2 has won ${p2.games} rounds");
    } if (p1total == p2total) {
      print("oh no it's a tie!!!");
    } if (p1total < p2total) {
      p2.gamesWon();
      print("$player2 wins this round!!!");
      print("$player1 has won ${p1.games} rounds");
      print("$player2 has won ${p2.games} rounds");
    }
  }
  if(p1.games == roundsToWin) {
    print("\n!!! $player1 has won the game ${p1.games} rounds to ${p2.games} !!!");
  } else if (p2.games == roundsToWin) {
    print("\n!!! $player2 has won the game ${p2.games} rounds to ${p1.games} !!!");
  }

}
int diceRoll() {
  int diceOutcome = Random().nextInt(6) + 1;
  return diceOutcome;
  print(diceOutcome);
}
class Player {
  String name;
  List<int> roundScore = [];
  int games = 0;

  Player(this.name);

  void addRoundScore(int score) {
    roundScore.add(score);
  }


  void gamesWon(){
    games++;
  }
}



