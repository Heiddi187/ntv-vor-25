import "dart:io";

void main(List<String> arguments) {
  bool validNumber = false;
  while (validNumber == false) {
    print("Enter your phonenumber");
    String phoneNumber = stdin.readLineSync().toString();
    print("þú skrifaðir $phoneNumber");
    if(phoneNumber.contains("+354") == true) {
      phoneNumber = phoneNumber.replaceAll("+354", "");
      print("Heyrðu þú settir +354 en ég tek það út");
    }
    if (phoneNumber.length == 8) {
      print("Ég vona að þú hafir bara bætt við auka bili eða bandstriki og ég tek það út");
      phoneNumber = phoneNumber.replaceAll("-", "");
      phoneNumber = phoneNumber.replaceAll(" ", "");
    }
    print("$phoneNumber, ég mun ná að breyta þessu ef það eru bara tölustafir í $phoneNumber");
    int? phoneNumberStorage = int.tryParse(phoneNumber);
    if (phoneNumber.length == 7 && phoneNumberStorage is int) {
      print("okei ég er með rétta lengd og þetta eru bara tölur");
      if (phoneNumber[0] != "1") {
        print("þetta númer er í lagi");
        validNumber = true;
      }
      else {
        print("er ekki í lagi afhverju byrjar númerið þitt á 1?!?");
      }}
      }
    }

    /*
      while (validNumber == false) {
      print("skrifaðu númerið þitt");
    } */ /*
    if (phoneNumber.length == 7) {
      print("Þetta er í lagi");
    } else {
      print("ekki réttur fjöldi stafa");
    };
*/
