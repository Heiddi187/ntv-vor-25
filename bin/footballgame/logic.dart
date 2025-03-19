import 'dart:math';

class fact {
  footballTeam team;
  footballPlayer player;
  String action;

  fact({required this.team, required this.player, required this.action});
}

class footballGame {
  footballTeam homeTeam;
  footballTeam awayTeam;
  int homeTeamScore;
  int awayTeamScore;
  int time;
  List<fact> matchFacts = [];
  footballGame({
    required this.homeTeam,
    required this.awayTeam,
    this.homeTeamScore = 0,
    this.awayTeamScore = 0,
    this.time = 0
  });

  // List of commentary
  List<String> scoreSaying = [
    "Þvílíkt mark",
    "Laglega klárað",
    "Markmaðurinn kemur engum vörunum við",
    "Rennir honum snyrtilega í hornið",
    "Hann gat ekki annað en skorað úr þessu færi"
  ];
  void printScoreSaying() {
    Random s1 = new Random();
    int randomSaying = s1.nextInt(4);
    print(scoreSaying[randomSaying]);
  }

  void printMatchFacts() {
    print("====== Match Summary =====");
    for(fact matchFact in this.matchFacts) {
      print("${matchFact.team.name} - ${matchFact.player.getName()} ${matchFact.action}");
    }
    print("==========================");
  }

  void playGame(int minute) {
    this.time = minute;
    Random r1 = new Random();
    int randomNumber1 = r1.nextInt(11);
    int randomNumber2 = r1.nextInt(11);
    int randomNumber3 = r1.nextInt(10);
    if(randomNumber1 == randomNumber2) {
      print("Það var mark!");
      if (randomNumber1 >= 6) {
        print ("${this.homeTeam.players[randomNumber3+1].getName()} er kominn í færi");
        if(didHeScore(this.homeTeam.players[randomNumber3+1]))
        {
          print("Og hann skorar!");
          fact tempFact = fact(team: this.homeTeam,
            player: this.homeTeam.players[randomNumber3 + 1],
            action: "skoraði mark");
          this.matchFacts.add(tempFact);
          this.homeTeamScore++;
          printScoreSaying();
        } else {
          print("Hann klúðraði!");
          fact tempFact = fact(team: this.homeTeam,
              player: this.homeTeam.players[randomNumber3 + 1],
              action: "klúðraði færi");
          this.matchFacts.add(tempFact);
        }
      } else {
        print ("${this.awayTeam.players[randomNumber3+1].getName()} er kominn í færi");
        if(didHeScore(this.awayTeam.players[randomNumber3+1]))
        {
          print("Og hann skorar!");
          fact tempFact = fact(team: this.awayTeam,
              player: this.awayTeam.players[randomNumber3 + 1],
              action: "skoraði mark");
          this.matchFacts.add(tempFact);
          this.awayTeamScore++;
          printScoreSaying();
        } else {
          print("Hann klúðraði!");
          fact tempFact = fact(team: this.awayTeam,
              player: this.awayTeam.players[randomNumber3 + 1],
              action: "klúðraði færi");
          this.matchFacts.add(tempFact);
        }
      }
    }
    print("${minute}:${homeTeam.name} ${homeTeamScore}-${awayTeamScore} ${awayTeam.name}");

  }
}

class footballTeam {
  String name;
  String league;
  String country;
  List<footballPlayer> players;
  footballTeam({required this.name, required this.league,
    required this.country, required this.players});

  void showTeam() {
    print("The ${this.name} line up");
    this.players.forEach((player){
      print("${player.squadNumber} ${player.getName()} - ${player.position}");
    });
  }
}

class footballPlayer {
  int squadNumber;
  String firstName;
  String lastName;
  String position;
  footballPlayer({required this.squadNumber,required this.firstName,
    required this.lastName,required this.position});

  String getName() {
    return "${firstName.substring(0,1)}. ${lastName}";
  }
}
bool didHeScore(footballPlayer p1) {
  bool result = false;
  Random random1 = new Random();
  int odd = random1.nextInt(10);
  int scoreOdds = 0;
  if(p1.position == "Goalkeeper") {
    scoreOdds = 1;
  } else if(p1.position == "Defender") {
    scoreOdds = 3;
  } else if(p1.position == "Midfielder"){
    scoreOdds = 6;
  } else if(p1.position == "Forward") {
    if (p1.lastName == "Núñez") {
      scoreOdds = 3;
    }
    scoreOdds = 8;
  }
  if (scoreOdds >= odd){
    result = true;
  }
  return result;
}

