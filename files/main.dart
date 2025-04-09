import "dart:io";
import 'package:crypto/crypto.dart';

void main(){
  print("1. Sign up");
  print("2. Login");
  print("3. Exit");
  String inputMenu = stdin.readLineSync().toString();
  if(inputMenu == "1") {
    print("Sign up");
    print("Enter Username:");
    String usernameInput = stdin.readLineSync().toString();
    print("Enter Password:");
    String passwordInput = stdin.readLineSync().toString();
  } else if (inputMenu == "2") {
  List<UserInDB> mydatabase = getDatabase();
  bool isAuthenticated = authenticationMethod(mydatabase);
  if(isAuthenticated) {
    printSecretMessage();
  } else {
    print("You are not ready for the secret.");
  }
} else {
    print("you are exiting");
  }
  }

void printSecretMessage() {
  print("You are in.");
  print("The secret is....");
  print("Operation: Disappear");
  final secretMessage = File("files/secret.txt");
  final readfile = secretMessage.readAsLinesSync();
  for(var line in readfile) {
    print(" - $line");
  }
  print("Líf þitt mun aldrei verið það sama ef þú hverfur í 90 daga. Sjáumst aftur eftir 90 daga.");
}
bool authenticationMethod(List<UserInDB> mydb) {
  print("Enter your username");
  String username = stdin.readLineSync().toString();
  print("Enter your password");
  String password = stdin.readLineSync().toString();
  print("* Checking if $username exists");
  bool isAuthenticated = false;
  for (var user in mydb) {
    if(user.username == username) {
      print("* $username was found");
      if(user.password == password){
        isAuthenticated = true;
      } else {
        print("* Incorrect password");
      }
    }
  }
  return isAuthenticated;
}
List<UserInDB> getDatabase() {
  final _FILE = File("files/database.csv");
  final readFile = _FILE.readAsLinesSync();
  List<UserInDB> users = [];
  for(String text in readFile.sublist(1)) {
    var splitLine = text.split(";");
    UserInDB tempUser = UserInDB(username: splitLine[0], password: splitLine[1]);
    users.add(tempUser);
  }
  return users;
}
class UserInDB {
  String username;
  String password;
  UserInDB({required this.username, required this.password});
}