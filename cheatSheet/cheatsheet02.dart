import "dart:io";
void main(List<String> arguments) {

/*
  int personAge = 17;
  int driverLicenceAge = 17;
  print(personAge);
  bool doesPersonHaveDriversLicence = false;
  if(personAge >= driverLicenceAge && doesPersonHaveDriversLicence == true) {
    print("þú mátt keyra");
  } else if(personAge >= driverLicenceAge && doesPersonHaveDriversLicence == false) {
    print("bjalla í ökukennara");
  }
  else {
    print("taktu strætó");
  }

  if(!(5>7)) {
    print("rétt");
*/


  int tilraunir = 0;
  bool authenticated = false;
  while(!authenticated) {
    String myPassword = "MasterOf123";
    String userName = "admin";

    print("Enter your username");
    String loginUser = stdin.readLineSync().toString();
    print("Enter your password");
    String loginPassword = stdin.readLineSync().toString();

    if (loginUser.toLowerCase() == userName.toLowerCase() && loginPassword == myPassword) {
      print("welcome down the rabbithole");
      authenticated = true;
     } else {
     print("user or password incorrect");
     print("please try again");
    }


/*
  int i = 0;
  bool authenticated = false;
  while(i < 10) {

    i = i + 1;
    print(i);
  }
*/
}}