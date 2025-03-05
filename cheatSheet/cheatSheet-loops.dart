import "dart:io";
import 'dart:math';
void main (List<String> arguments) {

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
 /*
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

   for(int i = 1; i <= 10; i++){
    print(i);
   }

   for(int j = 10; j >= 0; j--){
     print(j);
   }

   List animals = ["ljón", "hundur", "kisi", "lodhamstur"];

   for(String animal in animals){
     print(animal); //animals er allur listinn eins oft og fjöldinn i honum
   }

   int numb = 5;
   //while(numb > 0){
     //numb--;
     //print(numb);
   //}

   do{
     numb--;
     print(numb);
   }
   while(numb > 0);

  List numbs = [1,2,3,4,5,6,7,8,32,234,4324];
  List numbs2 = [1,2,3,5,7,89,4,3,21,4324];
  List combNumbs = [];

  for(int num in numbs){
    if(num > 10){
      print(num);
    }
  }
  for(int i in numbs){
    for(int j in numbs2){
      if(i == j){
        combNumbs.add(j);
      }
    }
  }
  print(combNumbs);
*/
}