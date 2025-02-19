void main(List<String> arguments) {
<<<<<<< HEAD
  String firstName = "Heiðar";
  String lastName = "Hlöðversson";
  print("Hi $firstName $lastName");

  String fullName = firstName + " " + lastName;
  print("Hi $fullName");

  int nameLength = fullName.length;
  print(nameLength);

  String SSN = "123456-7890";
  int ssnLength = SSN.length;
  print(ssnLength);
  String fixSSN = SSN.replaceAll("-", "");
  int SSNLength = fixSSN.length;
  print(SSNLength);

  
=======
  String firstName = "Gunnar Geir";
  String lastName = "Helgason";
  print("Hi $firstName $lastName");
  //Hér prentar hún út Gunnar Geir Helgason
  String fullName = firstName + " " + lastName;
  print("Hi $fullName");
  String SSN = "200689-2409";
  String fixSSN = SSN.replaceAll("-", "");
  //replaceAll er notað til þess að taka í burtu fyrri hlutan ss "-"
  int ssnLength = fixSSN.length;
  print(ssnLength);
  String message = "Hello World";
  String fixMessage = message.replaceAll("World", "NTV");
  print(fixMessage.toUpperCase());

  String birthDate = SSN.substring(0,6);
  print(birthDate);
  String email = "GunnArGeir@nTv.is";
  print(email.toLowerCase());
>>>>>>> 6316405830aeba7733071e8420b12a1a38fd133d
}