import "dart:io";
import 'dart:math';
void main (List<String> arguments) {

  List friends = ["Runar", "Scott", "Jan", "Valli"];
/*
  print(friends);
  for(String friend in friends){
    print("Takk fyrir sidast $friend");
  }

  print("Friends ranked:");
  for(int i = 0; i < friends.length; i++){
    print("${i+1} ${friends[i]}");
  }
 */
  // List<String> nafn - til að fá örugglega sem streng
  List groceries = ["Milk", "Cereal", "Bread", "Eggs", "Soda"];
  /*
  print(groceries);
  for(int i = 0; i < groceries.length; i++){
    print("${i + 1} - ${groceries[i]}");
  }


  print("==========");
  String discontiuned = "Cereal";
  print("${discontiuned} is no longar available");
    groceries[1] = "Porridge";
  print("updated list");
  for(String updatedItem in groceries){
    print(updatedItem);
   }
*/
/*
  String ekkiTil = groceries[1];
  print("They are out of $ekkiTil");
  groceries[1] = "Porridge";
  for(String item in groceries) {
    print(item);
  }
*/

  List forTheParty = ["Candy", "Ice-cream", "Cups"];
  print("For the party we also need: $forTheParty");
  groceries.insert(0, forTheParty[0]);
  print(groceries);
  int halfLength = (groceries.length / 2).floor();
  groceries.insert(halfLength, "camera");
  groceries.insert(2, forTheParty[1]);
  print(groceries);
  groceries.add(forTheParty[2]);
  print(groceries);
  groceries.removeAt(3);
  print(groceries);
  groceries.sort();
  print(groceries);



  }