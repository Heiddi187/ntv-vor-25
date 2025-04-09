import 'dart:io';

void main(){
  final _FILE = File("bin/footballgame/database2");
  final readFile = _FILE.readAsLinesSync();
  List<userInDB> users = [];
  for (String text in readFile) {
    var splitLine = text.split(";");
    userInDB tempUser = userInDB
    print(splitLine[0]);
    print(splitLine[1]);
  };
}

class userInDB {
  String username;
  String password;
  userInDB({})
}