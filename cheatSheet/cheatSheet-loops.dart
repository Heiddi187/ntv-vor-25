import "dart:io";
import 'dart:math';
void main (List<String> arguments) {
/*
  List pizzaTop = ["cheese", "ham", "salami"];
  print("Enter a pizza topping or enter stop when your done");
  //int stop = quit;
  List allTheTops = [];
  bool active = true;
  while(active) {
    String topping = stdin.readLineSync().toString();

    if (topping == "stop") {
      print("Your order is, $allTheTops");
      print("that's a good looking pizza!!");
      active = false;
    } else {
      allTheTops.add(topping);
      print("i'll add $topping to your pizza");
    }
  }

  String word = "NTV";
  for(int i = 0; i < word.length; i++) {
    print(word[i]);
  }
*/
/*
  bool pizzaPizza = true;
  while(pizzaPizza){
    String topping = stdin.readLineSync()!;
    print("i'll add $topping to your pizza");
    if (topping == "quit"){
      pizzaPizza = false;
      //break;
    }
  }
*/
  List pizzas = ["pepporoni", "Hawaiian", "Cheese", "Margherita"];
  for(String a in pizzas){
    print("I love eating $a");
  }
print("all pizza is good pizza");
}
//git status (tékka hvort það er eitthvað nýtt
//git add . (bæta við öllu (punktur = allt))
//git commit -m "comment*" (þarf alltaf að vera komment)
//git push origin