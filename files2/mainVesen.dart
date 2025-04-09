import 'dart:io';

void main() {
  bool isAuthenticated = false;
  showMenu();
  String inputMenu = stdin.readLineSync().toString();
  if(inputMenu == "1") {
    print("Sign up");
    print("Enter username");
    String usernameInput = stdin.readLineSync().toString();
    print("Enter password");
    String passwordInput = stdin.readLineSync().toString();
    final _FILE = File("files2/database.csv");
    final WriteTo_FILE = _FILE.openWrite(mode: FileMode.writeOnlyAppend);
    WriteTo_FILE.writeln("\n$usernameInput;$passwordInput");
    WriteTo_FILE.close();
  } else if(inputMenu == "2") {
    List<userInDB> mydatabase = getDatabase();
    isAuthenticated = authenticationMethod(mydatabase);
    if (isAuthenticated) {
      printSecretMessage();
    } else {
      print("sorry you are not ready");
    }
  }


}



void showMenu() {
  print("1. Sign up");
  print("2. Login");
  print("3. Exit");
}

void printSecretMessage() {
  print("you are in");
  print("the secret is");
  final SecretMessage = File("files/secret.txt");
  final readfile = SecretMessage.readAsLinesSync();
  //print(readfile);
  for(var line in readfile) {
    print(" - $line");
  }
}

bool authenticationMethod(List<userInDB> mydb) {
  List<userInDB> mydatabase = getDatabase();
  print("enter your username");
  String username = stdin.readLineSync().toString();
  print("enter your password");
  String password = stdin.readLineSync().toString();
  bool doesUserExist = false;
  bool isAuthenticated = false;
  for (var user in mydb) {
    if(user.username == username) {
      print("$username was found");
      doesUserExist = true;
      if(user.password == password) {
        isAuthenticated = true;
      } else {
        print("incorrect password");
      }
    }
  }
  if(doesUserExist == false) {
    print("User: $username does not exist");
  }
  return isAuthenticated;
}

List<userInDB> getDatabase() {
  final _FILE = File("files2/database.csv");
  final readFile = _FILE.readAsLinesSync();
  List<userInDB> users = [];
  for(String text in readFile.sublist(1)) {
    var splitLine = text.split(";");
    //print(splitLine[0]);
    //print(splitLine[1]);
    userInDB tempUser = userInDB(username: splitLine[0], password: splitLine[1]);
    users.add(tempUser);
  }
  //print(users[1].username);
  //print(users[1].password);
  return users;
}

class userInDB {
  String username;
  String password;
  userInDB({required this.username, required this.password});
}