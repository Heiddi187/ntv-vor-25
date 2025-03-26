void main () {

  //greet("angela", "howdy");
  //greet("jack bauer", "wassup");
  greet(greeting: "hello", name:  "john");
  List<String> myList = [
    "angela",
    "james",
    "katie",
    "jack"
  ];
  print(myList); // lists begin counting on zero - 0, 1, 2, 3
  print(myList[3]);
  print(myList.indexOf("katie"));
  print("loops");
  for (int i = 1; i<=7; i++) {
    print("hello $i");
  }

}

void greet({String? name, String? greeting}) {
  print("$greeting $name");
}