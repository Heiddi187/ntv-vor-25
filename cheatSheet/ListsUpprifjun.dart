import "dart:io";
import 'dart:math';
void main (List<String> arguments) {
  //create a list
  List myList = [1,2,3,4,5];
  //change item on list
  myList[0] = 25; //0 breytir, listar byrja telja á 0
  //add to a list
  myList.add(6);
  //add multiple
  myList.addAll([7,8,9]);
  //print(myList);
  // insert at specific location
  myList.insert(3, 10);
  //insert many
  myList.insertAll(0, [0,1,10]);
  //remove
  myList.remove(8); //tekur út þetta value
  //print(myList);
  //remove at
  myList.removeAt(3); //hvaða stað í rununni
  //sort the list
  myList.sort(); //stafrófs eða stærðarröð
  //remove between 2 indexes
  myList.removeRange(0, 5);
  //print(myList);
  //remove last item
  myList.removeLast();




}