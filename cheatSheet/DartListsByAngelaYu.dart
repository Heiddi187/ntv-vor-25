List<int> winningNumbers = [12, 6, 34, 22, 41, 9];

void main () {
  List<int> ticket1 = [45, 2, 9, 18, 12, 33];
  List<int> ticket2 = [41, 17, 26, 32, 7, 35];

  checkNumbers(ticket1);
  print("");
  checkNumbers(ticket2);
}

void checkNumbers(List<int> myNumbers) {
  int matches = 0;
  for (int number in myNumbers) {
    for (int winningNumber in winningNumbers) {
      if (number == winningNumber) {
        matches++;
        print("yes number $number was drawn");
      }
    }
  }
  print("you have $matches matching numbers");
}