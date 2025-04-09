import 'dart:io';
import 'dart:math';

void main () {
/*
  for(int i = 100; i > 0; i -= 10) {
    print(i);
  }
*/
/*
  bool isTrue = false;

  while(isTrue == true) {
    print("hello friend");
  } // vegna þess að isTrue er true runnar þetta ekki

  do{
    print("hello world");
  } while (isTrue == true);
  // hérna printar hún þetta einu sinni, tékkar svo og stoppar
  // þetta er eitt af fáum dæmum sem 'do while' gerir eitthvað
*/
/*
  Random r = new Random();
  int randomNumber = 0;

  do {
    randomNumber = r.nextInt(10);
    print(randomNumber);
  } while (randomNumber != 3);
  // runnar aftur og aftur þangað til að hún lendir á '3' og stoppar þá
*/
/*
  List animals = ["froskur", "fiskur", "skjaldbaka", "hundur"];

  for (int i = 0; i < animals.length; i++) {
    // print(animals); - prentar út ALLAN listan jafn oft og fjöldinn í honum
    print(animals[i]); // prentar út hvert dýr sér í hverja línu
  }
*/

  List animals = [["froskur", "fiskur"], ["skjaldbaka", "hundur"]];
/*
  for (int i = 0; i < animals.length; i++) {
    //print(animals); // prentar allt út tvisvar - [[froskur, fiskur], [skjaldbaka, hundur]]
    //print(animals[i]); // prentar [froskur, fiskur] í eina línu og [skjaldbaka, hundur] í aðra
    //for (int j = 0; j < animals.length; j++) {
      //print(j); // prentar út - 0, 1, 0, 1,
    }
    for (int j = 0; j < animals[i]; j++) {
      print(j);
  }
*/
/* // !!! þessi virkar ekki !!!
  for (int i = 0; i < animals.length; i++) {
    int row = animals[i];
    for (int j = 0; j < row; j++) {
      print(row);
    }
  }
*/
/*
  for(int i = 1; i <= 5; i++) {
    print("outer loop nr.$i");
    for (int j = 1; j <= 3; j++) {
      print("inner loop $j");
    }
  }
*/
/*
  for (int i = 0; i < animals.length; i++) {
    for (int j = 0; j < animals.length; j++) {
      print(animals[i][j]); // froskur, fiskur, skjaldbaka, hundur
      //print(animals[j][i]);
      // prentar út froskur, skjaldbaka, fiskur, hundur,
      // nr.1 í lista 1, nr.1 í lista 2, nr.2 í lista 1, nr.2 í lista 2
    }
  }
*/

  List names = ["Addi", "Bubbi", "Diddi", "Einsi"];
  List number = [1, 2, 3, 4, 5];
  List combi = [];
  /*
  for (int i = 0; i < names.length; i++) {
    //print("${number[i]}.${names[i]}");
    combi.add("${number[i]}.${names[i]}");
    //for (int j = 0; j < names.length; j++) {
      //print("nr.${number[i]} - ${names[i]}");
  }
  print(combi);
  for (int i = 0; i < combi.length; i++) { // ekki hægt að nota number.length því þau eru fleiri
    print(combi[i]);
  }
  */
/* // !!!!!!!! VIRKAR EKKI !!!!

  List nameAndNum = [["Addi", "Bubbi", "Diddi", "Einsi"], [1, 2, 3, 4]];
  List combi2 = [];

  for (int i = 0; i < nameAndNum.length; i++) {
    for (int j = 0; j < nameAndNum.length; j++) {
      print(nameAndNum[j][i]);
      //combi2.add(nameAndNum[j][i]);
    }
  }
  print(combi2);
*/
/*
String star = "*";

for(int i = 1; i <= 5; i++) {
    for (int j = 1; j < i; j++) {
      stdout.write(star);
    }
  print(star);
}
*/
  /*
  for(int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
*/
  ////////////////////////////      forEach      ///////////////////////////////////
/*
  List tvShows = ["From", "The White Lotus", "Godless", "Braking bad", "Sons of Anarchy"];

  tvShows.forEach((tvShow) {
    print("${tvShows.indexOf(tvShow) + 1}. $tvShow");
  });
*/
/*
  for(String tvShow in tvShows) {
    print(tvShow); // her er enginn index
  }

  for(int i = 0; i < tvShows.length; i++) {
    print(tvShows[i]); // herna er index, þannig er hægt að gera:
    print("${i + 1} - ${tvShows[i]}");
  }
*/
/*
  List<int> numbers = [10, 20, 30, 40, 50];
  int sum = 0;
  // use forEach to calc the sum

  numbers.forEach((number) {
    sum += number;
    print("the sum is $sum");
  });
*/
/*       //////////////   A þetta eftir /////////////
  List<String> words = ["apple", "banana", "cherry", "date"];
  // use forEach to print the length of each word

  List<int> numbers2 = [1, 2, 3, 4, 5];
  // use forEach to multiply each number by 2

  List<String> animals2 = ["lion", "tiger", "bear", "elephant"];
  // use forEach to print index and value

  List<int> numbers3 = [1, 2, 3, 4, 5];
  // use forEach to print only the even numbers

  List<String> words2 = ["hello", "world", "of", "dart"];
  // use forEach to convert all words to uppercase

  List<String> phrases = ["Hello", "world", "from", "Dart"];
  // use forEach to concatenate all phrases

  List<int> numbers4 = [1, 2, 3, 4, 5];
  List<int> squaredNumbers = [];
  // use forEach to square each number and add it to squaredNumbers

  List<int> numbers5 = [1, 2, 3, 3, 4, 3, 5];
  int count = 0;
  // use forEach to count occurrences of the number 3
*/
  //////////////////////////////     bonus     ////////////////////////////////

  // *****
  // *****
  // *****
  // *****
  // *****

  //     *
  //    **
  //   ***
  //  ****
  // *****

  // 1
  // 121
  // 12321
  // 1234321

  // *
  // ***
  // *****
  // ***
  // *
}