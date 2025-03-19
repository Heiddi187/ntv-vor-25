import 'dart:io';
import 'dart:math';

void main() {
  // basic syntax
  // types

  int number = 0; //heilar tölur
  double isDouble = 0.01; // brot
  String name = "nafn"; // getur verið tölur líka en þá er ekki hægt að vinna með þær
  bool isActive; // true eða false, mikið notað með loops (while / if)
    if(number > 0 && number < 10) {
      print("true");
    } else {
      print("false");
    }

  final isFinal; // verður ekki breytt (String eða int)
  const isConst = 0; // svipað og final
  var isVar; // variable - safe leið en getur crashað forritum (þarf ekki að declareað hvort int eða String)

  List myList = [];

  Map isMap = {
    "userName":"admin", "password":"isPassword"
  };
  print(isMap);
  print(isMap["userName"]);

  // control flow
  // if else switch
  String weekDay = "monday";
  switch(weekDay){
    case "saturday": {
      print("weekend");
      break;
    }
    case "sunday": {
      print("weekend");
      break;
    }
    default: {
      print("weekday");
      break; }
  }
  if(weekDay == "saturday"){
    print("weekend");
  } else if(weekDay == "sunday"){
    print("weekend");
  } else {
    print("weekday");
  }
  // for while do-while

  // functions
  int addTwo (int num1, int num2){
    return num1 + num2;
  }
  int sum = addTwo(9, 13);
  print(sum);

  // list and loops
  for(int i = 1; i <= 3; i++){
    print(i); // telur upp að þrenur
  }
  int index = 3;
  while(index > 0){
    index--;
    print(index); // telur niður munar hvort er fyrir ofan -- eða print
  }
  for(int i = 1; i <= 3; i++){
    for(int j = 0; j < 3; j++){
    print(i+j); // telur allt öðruvísi (i / j / i+j)
    }}

  // classes and objects
  Dog myDog = Dog(name: "Snati");
  myDog.bark();
}
class Dog {
  String name;

  Dog({required this.name});

  void bark() {
    print("$name says WOOF!!!");
  }
}