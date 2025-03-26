void main () {

  print("lyrics to 99 bottles of beer");
  bottlesOfBeer(99);
}

void bottlesOfBeer (int bottles) {
  for(int i = bottles; i>0; i--) {
    print("$i bottles of beer on the wall, $i of beer");
    print("Take one down and pass it around, ${i-1} bottles of beer on the wall");
    print("");
  };
}