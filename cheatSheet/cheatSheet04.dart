import "dart:io";
import 'dart:math';
void main (List<String> arguments) {
  List names = ["Ari B", "Bjarni D", "Danni E", "Einar E"];
  print(names);
  names[3] = "Einar F";
  print(names);
  names.add("Frikki");
  print(names);
  names.addAll(["Heiddi", "Ingó", "Jakob"]);
  print(names);
  List names2 = [];
  print(names2);
  names.insert(5, "Gunnar");
  print(names);
  names.insertAll(2, ["Clem", "Clarice", "Carol"]);
  print(names);
  names.remove("Clem");
  print(names);
  names.removeAt(1);
  print(names);
  var danniIndex = names.indexOf("Danni E");
  names.removeAt(danniIndex);
  print(names);
}