import "dart:io";
import 'dart:math';


void main (List<String> arguments) {
/*
  print("What is you name?");
  String name = stdin.readLineSync().toString();
  print("What would you like to eat?");
  String food = stdin.readLineSync().toString();
  String foodAnnouncement = "Thank you $name. Your $food is ready";
  print(foodAnnouncement);
  }
*/


/*

void order_information(String name, String food) {
  print("What is you name?");
  String name = stdin.readLineSync().toString();
  print("What would you like to eat?");
  String food = stdin.readLineSync().toString();
  String foodAnnouncement = "Thank you for your order $name. Your $food is ready";
  print(foodAnnouncement);
}
void main(){
  print("Whaat is you name?");
  String name = stdin.readLineSync.toString();
  print("What would you like to eat?");
  String food = stdin.readLineSync.toString();
  order_information(name, food);
}

  void order_information(String customername, String fooditem) {
    String foodAnnouncement = "Thank you $customername. Your $fooditem is ready";
    print(foodAnnouncement);
  }*/
/*
// rectangle - area = length * width
// circle    - area = radius * pi(squared)
// triangle - area = (height of the base * length of the base) / 2

int length = 20;
int width = 15;
int rectArea() {
  int l = length;
  int w = width;
  int area = l * w;

  print(area);
  return area;
}
*/
/*
print("What is the length?");
String length = stdin.readLineSync().toString();
print("What is the width?");
String width = stdin.readLineSync().toString();
String rectangle = "Your rectangle has a length $length and width $width";
print(rectangle);
double length2 = double.parse(length);
double width2 = double.parse(width);
double area = length2 * width2;
print("your rectangle has the area $area");
*/
}

// afhverju prentar hann ekkert af þessu fyrir neðan út???
void rectangleArea(double length, double width) {
  print("Enter the length of the rectangle: ");
  String l = stdin.readLineSync().toString();
  double length = double.parse(stdin.readLineSync()!);
  print(length);


}