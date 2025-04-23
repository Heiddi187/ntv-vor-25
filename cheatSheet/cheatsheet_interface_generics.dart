void main() {
  Lion lion = Lion();
  Elephant nelly = Elephant();
  lion.diet();
  nelly.habitat();
  lion.predators();

  /*
  DevilCake cake1 = DevilCake();
  cake1.preHeatOven();
  cake1.bakePrep();
  cake1.ingredients();
  cake1.bakeTheCake();
   */
}

abstract class animal {
  // what all animals have or do
  void habitat();
  void diet();
  void predators();

}

class Lion implements animal {
  @override
  void diet() {
    print("diet");
  }

  @override
  void habitat() {
    print("$Lion habitat");
  }

  @override
  void predators() {
    print("predators");
  }

}


class Elephant implements animal {
  @override
  void diet() {
    print("diet");
  }

  @override
  void habitat() {
    print("$Elephant habitat");
  }

  @override
  void predators() {
    print("predators");
  }

}




/*
abstract class CakeBaking {
  void bakePrep();
  void ingredients();
  void preHeatOven();
  void bakeTheCake();
}

class DevilCake implements CakeBaking {
  @override
  void bakePrep() {
    print("Now we need to get our stuff together and find a recipe");
  }

  @override
  void bakeTheCake() {
    print("put it in the oven and wait till done");
  }

  @override
  void ingredients() {
    print("find the ingredients in this recipe");
  }

  @override
  void preHeatOven() {
    print("set the temperature");
  }

}
*/
