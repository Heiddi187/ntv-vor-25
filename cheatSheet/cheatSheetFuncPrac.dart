import 'dart:math';

import 'package:ntv_vor_25/methods.dart';
import 'package:ntv_vor_25/ourmethods.dart';
void main (List<String> arguments) {
  company Bonus = company(id: 1,
    name: "Bónus",
    domainURL: "@bonus.is",
    type: "Supermarket");
  company Kronan = company(id: 2,
      name: "Krónan",
      domainURL: "@kronan.is",
      type: "Supermarket");
  company Steypustodin = company(id: 3,
      name: "Steypustöðin",
      domainURL: "@steypa.is",
      type: "Building");
  List<company> myCompanyList = [];
  myCompanyList.add(Bonus);
  myCompanyList.add(Kronan);
  myCompanyList.add(Steypustodin);
  // sækjum listan name frá file methods.dart
  List<String> employees = getNamesList();
  // búum til tóman employee lista
  List<employee> employeesTransformed = [];
  // lúppun í gegnum listann
  for (String employeeName in employees) {
    // búum til username með createusername funct
    String userName = createUserName(employeeName);
    var random = Random();
    int randomCompany = random.nextInt(3);
    int randomAge = random.nextInt(60);
    int age = randomAge + 20;
    company tempCompany = myCompanyList[randomCompany];
    // búum til nýtt employee object
    // object er basically tegund af string / int / bool, bara flóknari og geymir meira
    employee newEmployee = employee(name: employeeName,
        age: age,
        userName: userName,
        employeer: tempCompany
    );
    tempCompany.employees.add(newEmployee);
    // bætum þessum newemployee í lista listan okkar sem við bjuggum til
    employeesTransformed.add(newEmployee);
    // þetta var allt inni áður en við gerðum for lúppuna fyrir neðan
    //print(newEmployee.name);
    //print(newEmployee.age);
    //print(newEmployee.userName + newEmployee.employeer.domainURL);
    //print(newEmployee.employeer.name);
    //print(newEmployee.employeer.type);
    //print("-----------------");
  }
  for (employee e in employeesTransformed) {
    if (e.employeer.id == 1) { //prentar bara út ef viðkomandi er að vinna í bónus (1)
      print(e.name);
      print(e.age);
      print(e.userName + e.employeer.domainURL);
      print(e.employeer.name);
      print(e.employeer.type);
      print("-----------------");
    }
  }
}
// employee object
class employee {
  String name;
  int age;
  String userName;
  company employeer;
  //company employer;
  employee({required this.name, required this.age, required this.userName, required this.employeer});
}
//
class company {
  int id;
  String name;
  String domainURL;
  String type;
  List<employee> employees = [];
  company({required this.id, required this.name, required this.domainURL, required this.type});
}
// createusername function
String createUserName(String tempName) {
    List splitName = tempName.split(" ");
    String firstName = splitName[0];
    String lastName = splitName[1];
    String userName = firstName + lastName.substring(0,3);
    userName = removeIcelandicLetters(userName);
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

  return input; }