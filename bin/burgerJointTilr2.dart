import "dart:io";
import 'dart:math';
void main(List<String> arguments) {
  List<String> burgers = ["Cheeseburger", "Baconburger", "Doubleburger", "Badburger", "Goodburger", "Chickenburger"];
  List<int> prices = [1990, 2290, 3090, 2090, 2990, 2490];
  List<String> theOrder = [];
  int theTotal = 0;

  print("Welcome to the Dart Burger Joint!!!");
  print("=== Here is our menu ===");
  for (int i = 0; i < burgers.length; i++) {
    print("${i + 1} - ${burgers[i]} - ${prices[i]}.btc");
  }

  print("Enter the number of the burger you want to order");

  bool iPontun = false;

  while (!iPontun) {
    String item = stdin.readLineSync().toString();
    // stop function (kemur alltaf eitthvað rautt í endann!!!)
    if (item.toLowerCase() == "stop") {
      iPontun = true;
      print("Your final order is: ");
      print("");
      for (int j = 0; j < theOrder.length; j++) {
        print("${theOrder[j]} - ${prices[burgers.indexOf(theOrder[j])]} btc");
      }
      print("");
      print("for a total of: $theTotal.btc");
      print("Thank you for ordering from the Dart Burger Joint, have a nice meal");
    }
    // invalid input function
    if (int.tryParse(item)! < -6 || int.tryParse(item)! > 6 || int.tryParse(item) == 0) {
        print("invalid input, please try again");
    }
    // remove function
    else if (item.startsWith("-")) {
      item = item.replaceAll("-", "");
      int item2 = int.tryParse(item)!;
      if (theOrder.contains(burgers[item2 - 1])) {
        theOrder.remove(burgers[item2 - 1]);
        theTotal -= prices[item2 - 1];
        print("You have removed ${burgers[item2 - 1]}");
        print("");
        print("Your order:");
        for (int m = 0; m < theOrder.length; m++) {
          print("${theOrder[m]} - ${prices[burgers.indexOf(theOrder[m])]} btc");
        }
        print("");
        print("Total price: $theTotal.btc");
        print("Enter the number of the burger you want to order or type 'stop' to finish your order");
      } else {
        print("${burgers[item2 - 1]} is not in your order");
      }
    }
    // add to order function
    else {
        int item2 = int.tryParse(item)!;
        if (item2 > 0 && item2 <= burgers.length) {
          theOrder.add(burgers[item2 - 1]);
          theTotal += prices[item2 - 1];
          print("You have added ${burgers[item2 - 1]} to your order");
          print("");
          for (int l = 0; l < theOrder.length; l++) {
            print("${theOrder[l]} - ${prices[burgers.indexOf(theOrder[l])]} btc");
          }
          print("");
          print("Total price: $theTotal.btc");
          print("");
          print("Enter the number of the burger you want to order or type 'stop' to finish your order");
        }

      }
    }


  }
