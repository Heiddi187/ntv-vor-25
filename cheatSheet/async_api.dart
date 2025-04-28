import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test/expect.dart';

void main() async {
  chuckNorris();
  getJoke();
}
/*
Future fetchData() async {
  String data = "engin gögn";
  await Future.delayed(Duration(seconds: 2));
  data = "gögnin eru mætt";
      return data;
}
*/
Future chuckNorris() async {
  final response = await http.get(Uri.parse("https://api.chucknorris.io/jokes/random"));
  final data = jsonDecode(response.body);
  print(data["value"]);
}

Future getJoke() async {
  final response = await http.get(Uri.parse("https://sv443.net/jokeapi/v2/joke/any"));
  final data = jsonDecode(response.body);
  if(data["joke"] == null) {
    print(data["setup"]);
    print(data["delivery"]);
  } else {
    print(data["joke"]);

  }
}

//VERKEFNI
// Assignment Details:
// Instructions:
// 1.	Set Up Your Dart Environment:
// ▪	Create a new Dart project using your preferred IDE or the command line.
// 2.	Choose an API:
// ▪	Select one of the following APIs to fetch data from:
// ◦	Dad Jokes API: icanhazdadjoke.com
// ◦	Quotes API: quotable.io
// ◦	JSONPlaceholder API: jsonplaceholder.typicode.com
// 3.	Fetch Data:
// ▪	Use the ⁠http package to send a GET request to the chosen API.
// ▪	Ensure you handle any potential errors that may occur during the request.
// 4.	Parse the Response:
// ▪	Parse the JSON response to extract the relevant data.
// ▪	For example, if using the Dad Jokes API, extract the joke text. If using the Quotes API, extract the quote and author.
// 5.	Display the Data:
// ▪	Print the fetched data to the console in a clear and formatted manner.
// ▪	Ensure that the output is user-friendly and easy to read.
// 6.	Bonus Challenge:
// ▪	Implement a loop that allows the user to fetch new data by pressing the Enter key.
// ▪	Optionally, allow the user to choose between different types of data (e.g., fetch a new joke or a new quote).
// Example Output:
// For the Dad Jokes API, the output might look like this:
// Fetching a dad joke...
// Dad Joke: Why don't skeletons fight each other? They don't have the guts!
// Press Enter to fetch another joke or type 'exit' to quit.