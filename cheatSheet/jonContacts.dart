import 'dart:io';

void main() {
  ContactManager contactManager = ContactManager();

  while (true) {
    print("\n1. Add Contact");
    print("\n2. View Contact");
    print("\n3. Delete Contact");
    print("\n4. Exit");
    print("Select an option");
    String? input = stdin.readLineSync();


    switch (input) {
      case "1":
      //add
        print("Enter name");
        String? name = stdin.readLineSync();
        print("Enter phonenumber");
        String? phoneNumber = stdin.readLineSync();
        print("Enter email");
        String? emailAddress = stdin.readLineSync();

        Contact contactToAdd = Contact(name: "$name", phoneNumber: "$phoneNumber", email: "$emailAddress");
        contactManager.addContact(contactToAdd);

        break;
      case "2":
      //view
      contactManager.displayContacts();
        break;
      case "3":
      //delete
      print("enter name to delete");
      String? nameToDelete = stdin.readLineSync();
      contactManager.deleteContactByName(nameToDelete!);
        break;
      case "4":
        print("Exiting");
        return;
      default:
        print("invalid option");
    }
  }
}

class Contact{
  String? name;
  String? phoneNumber;
  String? email;

  Contact({this.name, this.phoneNumber, this.email});
}
  // contact manager
class ContactManager {
  List<Contact> contacts = [];

  //display all contacts
  void displayContacts() {
    if (contacts.isEmpty) {
      print("no contacts");
      return;
    }
    print("Contacts:");
    for (Contact contact in contacts) {
      print("${contact.name}, ${contact.phoneNumber}, ${contact.email}");
    }
  }

  void addContact(Contact contact) {
    contacts.add(contact);
  }

  void deleteContactByName(String name) {
    Contact contactToRemove = contacts.firstWhere((contact) =>
    contact.name.toString().toLowerCase() == name.toLowerCase(),
        orElse: () => Contact (name: "", phoneNumber: "", email: "")
    );
    if (contactToRemove != null) {
      contacts.remove(contactToRemove);
      print("Contact deleted: ${contactToRemove.name}");
    }
  }
}



