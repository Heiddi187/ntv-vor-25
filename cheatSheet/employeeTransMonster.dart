import "dart:io";
import 'dart:math';
import "package:ntv_vor_25/methods.dart";

void main (List<String> arguments) {
  company Bonus = company(id: 1, name: "Bónus", domainURL: "bonus.is", type: "supermarket",);
  company Kronan = company(id: 2, name: "Krónan", domainURL: "kronan.is", type: "supermarket",);
  company Steypustodin = company(id: 2, name: "Steypustöðin", domainURL: "steypa.is", type: "building",);
  List<company> myCompanyList = [];
  myCompanyList.add(Bonus);
  myCompanyList.add(Kronan);
  myCompanyList.add(Steypustodin);
  // sækjum listan af names frá þessum file þarna lib/methods.dart
  List<String> employees = getNamesList();
  // búum til tóman "employee" lista
  List<employee> employeesTransformed = [];
  // lúppum í gegnum listan
  for (String employeeName in employees) {
    // búum til username með createUserName fuctioninni fyrir neðan
    String userName = createUserName(employeeName);
    var random = Random();
    var randomCompany = random.nextInt(3);
    var randomAge = random.nextInt(45);
    int age = randomAge + 20;
    company tempCompany = myCompanyList[randomCompany];
    //Búum til nýtt "employee" object. p.s. Object er basically okkar
    // tegund af String eða int eða bool. bara aðeins flóknari og geta geymt meira
    employee newEmployee = employee(
      name: employeeName,
      age: age,
      userName: userName,
      employer: tempCompany
    );
    //Bætum þessum newEmployee i lista listan okkar sem við bjuggum til.
    employeesTransformed.add(newEmployee);
    //prentum út
    print(newEmployee.name);
    print(newEmployee.age);
    print(newEmployee.userName);
  }
}
// Hérna er employee classinn okkar
class employee {
  String name;
  int age;
  String userName;
  company employer;
  employee({required this.name, required this.age, required this.userName, required this.employer});
}
// hérn er company classsinn okkar
class company {
  int id;
  String name;
  String domainURL;
  String type;
  List<employee> employees = [];
  company({required this.id, required this.name, required this.domainURL, required this.type});
}

// Hérna er createUserName functionið okkar.
String createUserName(String tempName) {
  List splitName = tempName.split(" ");
  String firstName = splitName[0];
  String lastName = splitName[1];
  String userName = firstName + lastName.substring(0,3);
  userName = userName.toLowerCase();
  return userName;

}
// remove icelandic characters
String removeIcelandicLetters(String input) {
  Map<String, String> icelandicToLatin = {
    'ð': 'd',
    'þ': 'th',
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'ö': 'o',
    'Æ': 'Ae',
    'æ': 'ae',
    'Ð': 'D',
    'Þ': 'Th',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Ö': 'O'
  };

  icelandicToLatin.forEach((key, value) {
    input = input.replaceAll(key, value);
  });

  return input;
}