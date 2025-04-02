import 'dart:io';

void main () {

  var noodles = MenuItem("spicy noodles", 9.99);
  var pizza = Pizza(["pepperoni", "mushrooms"], "Sgt. Pepper", 12.99);

  print(noodles.format());
  print(pizza.format());
  pizza.format();
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);

  @override
  String format() {
    var formattedToppings = "Contains:";

    for (final t in toppings) {
      formattedToppings = "$formattedToppings $t";
    }

    return "$title -> $price \n$formattedToppings";
  }
}