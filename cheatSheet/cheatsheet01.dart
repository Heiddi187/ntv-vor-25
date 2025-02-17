void main(List<String> arguments) {
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

  
}