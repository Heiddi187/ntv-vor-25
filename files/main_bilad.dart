import "dart:io";

void main(){

  final _FILE = File("files/database_bilad.csv");
  final readFile = _FILE.readAsLinesSync();
  List<userInDB> users = [];
  for(String text in readFile.sublist(1)) {
    var splitLine = text.split(";");
    userInDB tempUser = userInDB(username: splitLine[0], password: splitLine[1]);
    users.add(tempUser);
  }
  print(users[0].username);
  print(users[0].password);
}

class userInDB {
  String username;
  String password;
  userInDB({required this.username, required this.password});
}
