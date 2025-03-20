import 'dart:io';
import 'dart:math';

void main() {

  Car car1 = Car(brand: "SangYong", model: "Musso", speed: 93);
  car1.info();
/*


  print("Brand?");
  String brands = stdin.readLineSync().toString();
  print("model?");
  String models = stdin.readLineSync().toString();
  print("speed?");
  String speeds = stdin.readLineSync().toString();
  Car car2 = Car(brand: brands, model: models, speed: int.parse(speeds));
  car2.info();
  */

  car1.faster();

  print(car1.faster());
  car1.info();

  ///////////////////////////////////////////////////////////////////
  Card tenOfClubs = Card("10", "clubs");

  // print(tenOfClubs.toString());

  Player jonny = Player("Jonny", []);
  jonny.addCard(tenOfClubs);
  jonny.addCard(tenOfClubs);
  jonny.printHand();
}

class Car {
  String brand;
  String model;
  int speed;

  Car({required this.brand, required this.model, required this.speed});

  void info() {
    print("This $brand $model is going $speed km/h");
  }

  int faster() {
    print("$brand $model is now going ${speed+5} km/h");
    return speed+5;

    print("$brand $model is now going $speed km/h");
  }



}

class Card {
  String suit;
  String rank;

  Card(this.rank, this.suit);

  int value() {
    if(["J", "K", "Q"].contains(rank)) {
      return 10;
    }
    if (rank == "A") {
      return 11;
    }
    return int.parse(rank);
  }

  String toString() {
    return "$rank of $suit";
  }
}

class Player {
  String name;
  List<Card> hand;

  Player(this.name, this.hand);
  
  void addCard (Card card) {
    hand.add(card);
  }

  void printHand () {
    for(Card card in hand) {
      print(card);
    }
  }
}
/*
void playGane() {
  Deck deck;
  Dealer dealer = dealer...
  dealer.deal
  player1.hit.
}

 */