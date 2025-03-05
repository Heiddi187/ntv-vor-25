import "dart:io";
import 'dart:math';
void main (List<String> arguments) {

  List burgers = ["Cheeseburger", "Baconburger", "Doubleburger", "Badburger", "Goodburger", "Chickenburger"];
  List prices = [1990, 2290, 3090, 2090, 2990, 2490];
  List theOrder = [];
  int? theTotal = 0;

  print("Welcome to the Dart Burger Joint!!!");
  print("=== Here is our menu ===");
  for(int i = 0; i < burgers.length; i++){
    print("${i + 1} - ${burgers[i]} - ${prices[i]}.btc");
  }

  print("Enter the number of the burger you want to order");

  bool iPontun = false;

  while(!iPontun) {
    String item = stdin.readLineSync().toString();

    //stop function
    if (item == "stop") {
      for (int l = 0; l < theOrder.length; l++) {
        print("${l + 1} - ${theOrder[l]} - ${prices[l]}.btc");
      }
      print("And that comes to: $theTotal");
      iPontun = true;
    }
    //remove function
    if (item.startsWith("-")) {
      item = item.replaceAll("-", "");
      int item2 = int.parse(item);
      theOrder.remove(burgers[item2 - 1]);
      theTotal = (theTotal! - prices[item2 - 1]) as int?;
      print("You have removed ${burgers[item2 - 1]}");
      for (int n = 0; n < theOrder.length; n++) {
        print("${n + 1} - ${theOrder[n]} - ${prices[n + 1]}.btc");
      }

      print(theTotal);
    }
    // add to function
    else {
      int item2 = int.parse(item);
      theOrder.add(burgers[item2 - 1]);
      print("You have added ${burgers[item2 - 1]} to your order");
      theTotal = prices[item2 - 1]! + theTotal;

      for (int j = 0; j < theOrder.length; j++) {
        print("${j + 1} - ${theOrder[j]} - ${prices[j]}.btc");
      }
      print("Your order of comes to $theTotal.btc");
      print(
          "Enter the number of the burger you want to order or type 'stop' to finish your order");
    }
  }
}