import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async{
  //print(await fetchData());
  //getDataJoke();

  //print(await getDataJoke());

  //String dataJoke1 = await getDataJoke();
  //String dataJoke2 = await getDataJoke();
  //print(dataJoke1);
  //print(dataJoke2);

  //getPosts();

  var greatTitle = await getPosts();
  print("this is a great title: $greatTitle");

  print("");
  chuckNorris();

  /*
  print("");
  String carNum = "PZ160";
  await getCar(carNum);
   */
}
/*
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
  return "Boom!!!";
}
 */
/*
Future<String> fetchData() async {
  String data = "engin gögn";
  print("BEFORE request: $data");

  await Future.delayed(Duration(seconds: 3));

  data = "gögn til staðar";
  print("AFTER request: $data");

  return data;
}
*/
/*
Future getDataJoke() async {
  Uri url = Uri.parse("https://icanhazdadjoke.com");
  //final response = await http.get(url);
  final response = await http.get(
      url,
      headers: {"accept": "application/json",});
  //print(response.body);
      //var data = jsonDecode(response.body);
      //return data["joke"];
          if(response.statusCode == 200) {
            var data = jsonDecode(response.body);
            return data["joke"];
          } else {
            throw Exception("hey eitthvað vesen");
          }
}
 */

Future getPosts() async {
  /*
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  final response = await http.get(url);
  final data = jsonDecode(response.body);
  print(data[0]);
  print(data[0]["title"]);
     */
  /*
  int postIndex = 2;
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts/$postIndex");
  final response = await http.get(url);
  final data = jsonDecode(response.body);
  print(data);
     */
  /*
  int postIndex = 2;
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts/");
  final response = await http.get(url);
  final data = jsonDecode(response.body);
    // hérna er verið að sækja allt data settið og loopa í gegn til að finna hvað þú vilt
  for(var post in data) {
    if(post["id"] == 10) {
      print(post["title"]);
    }
  }
    */
  /*
  String postTitle = "";
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts/");
  final response = await http.get(url);
  final data = jsonDecode(response.body);

  for(var post in data) {
    if (post["id"] == 10) {
      postTitle = post["title"];
    }
  }
  return postTitle;
     */
  int loopCount = 0;
  String postTitle = "";
  print("...loading...");
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts/");
  final response = await http.get(url);
  final data = jsonDecode(response.body);

  for(var post in data) {
    loopCount++;
    if (post["id"] == 10) {
      postTitle = post["title"];
    }
  }
  print(loopCount);
  return postTitle;
}

Future chuckNorris() async {
  final response = await http.get(Uri.parse("https://api.chucknorris.io/jokes/random"));
  final data = jsonDecode(response.body);
  print(data["value"]);
}
/*
Future getCar(String number)async{
  final response = await http.get(Uri.parse("http://apis.is/car?number$number"));
  final data = jsonDecode(response.body);
  print(data);
}

 */