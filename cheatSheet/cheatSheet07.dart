import "dart:io";
import 'dart:math';
void main (List<String> arguments) {
  print("the light bulb is......");
  bool myLightSwitch = true; //
  while(true) {

    myLightSwitch = turnOnOrOff(myLightSwitch); // tengir það sem er fyrir neðan
    // ef myLightSwitch er true
    displayLightBulbStatus(myLightSwitch);
    print("Should we check again?");
    stdin.readLineSync();
  }
  /* String onOrOff = "";
   if (myLightSwitch == true) {
    onOrOff = "onOrOff = ON!";
  } else {
    onOrOff = "onOrOff = OFF!";
  }
  print(onOrOff);*/

}

bool turnOnOrOff(bool lightSwitch) {
  return !lightSwitch;
  /* bool result;
  if (lightSwitch == true) {
    result = false;
  } else {
    result = true;
  }
  print("the result is $result"); // afhverju prentast þetta fyrir ofan onOrOff?
  return result;
  print(result);*/

}

void displayLightBulbStatus (bool lightSwitch) {
  if (lightSwitch == true) {
    print("The light is ON");
  } else {
    print("the light is OFF");
  }
  print("The light is ");
  print(lightSwitch ? "on" : "off"); // shorthand
}