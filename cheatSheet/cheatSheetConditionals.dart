import "dart:io";
import 'dart:math';
void main (List<String> arguments) {

  print("===== Grading program =====");
  // stdout.write("Pick a number between 1-100 afturabak skastrik og n")
  print("Pick a number between 1-100");
  String? input = stdin.readLineSync();
  // try{
  int score = int.parse(input!);
  if(score < 1 || score > 100) {
    print("Invalid input, please enter a number between 1-100");
  } else {
    if(score >= 90){
      print("Grade: A, great job");
    } else if(score >= 80){
      print("Grade: B, good job");
    } else if(score >= 70) {
      print("Grade: C, a fine job");
    } else if(score >= 60) {
      print("Grade D, needs improvement");
    }  else {
      print("Grade F, fail!!!");
    }
  }
  // } catch(e){
  // print("Error");
  // }

  bool isLoading = true; //prufaðu að breyta í false og svo til baka
  // turnery operator
  isLoading ? print("is loading") : print("is NOT loading");
  // if else
  if(isLoading){
    print("Loading...");
  } else {
    print("Not loading!");
  }

}