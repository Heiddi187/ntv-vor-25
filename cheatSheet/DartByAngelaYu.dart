void main () {

  var myName = "Heiddi";
  // type of variable / name of the variable / what the variable returns
  // what type of box / the name of that box / what's in the box
  print(myName);
  // prints whats in the box / print("myName"); prints: myName
  myName = "Heidar";
  print(myName);
  // String = letters on a string
  // int = integer = whole numbers
  // bool = boolean = either true or false
  var a = "hello";
  // a = 123; / can't do because one is String and the other a integer
  var b = 123;
  // b = "Hello"; / same thing, different type of variable
  var c;  // a way to get around this
  c = 123;
  print(c);
  c = "Hello";
  print(c); // not var c can be either a string or a int
  dynamic d = "hello";
  d = 123;
  print(d); // same thing if you call the variable dynamic, can change from int to string and back
  print(myFunction());
  double result = myFunction();
  print(result);
  buyMilk(5); // does not print anything
  int result2 = buyMilk(5);
  print(result2);

}

double myFunction() {
  double pi = 3.14159;
  return pi * 2;
}

int buyMilk(int money) {
  
  return money - 2;
}