import 'dart:io';
import 'dart:math';

void main() {
  // Step 1: Get player names
  print('Enter the name of Player 1: ');
  String? player1 = stdin.readLineSync();

  print('Enter the name of Player 2: ');
  String? player2 = stdin.readLineSync();

  // Step 2: Get number of rounds
  print('Enter the number of rounds to play: ');
  int rounds = int.parse(stdin.readLineSync()!);

  // Step 3: Initialize the random number generator
  Random random = Random();

  // Step 4: Play the rounds
  int player1Total = 0;
  int player2Total = 0;

  for (int round = 1; round <= rounds; round++) {
    print('\nRound $round:');

    // Player 1 rolls
    int player1Score = rollDice(random);
    print('$player1 rolled a total of $player1Score.');

    // Player 2 rolls
    int player2Score = rollDice(random);
    print('$player2 rolled a total of $player2Score.');

    // Determine winner of the round
    if (player1Score > player2Score) {
      player1Total++;
      print('$player1 wins this round!');
    } else if (player2Score > player1Score) {
      player2Total++;
      print('$player2 wins this round!');
    } else {
      print('It\'s a tie this round!');
    }
  }

  // Step 5: Final winner
  print('\nFinal Results:');
  print('$player1 won $player1Total rounds.');
  print('$player2 won $player2Total rounds.');

  if (player1Total > player2Total) {
    print('$player1 wins the game!');
  } else if (player2Total > player1Total) {
    print('$player2 wins the game!');
  } else {
    print('It\'s a tie game!');
  }
}

// Function to roll two dice and return the total score
int rollDice(Random random) {
  int die1 = random.nextInt(6) + 1;
  int die2 = random.nextInt(6) + 1;
  return die1 + die2;
}